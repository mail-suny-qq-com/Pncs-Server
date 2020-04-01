package ${package}.model;

import lombok.Getter;
import lombok.Setter;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pactera.core.model.BaseEntity;
import com.pactera.core.util.BeanUtil;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;
<#if isNotNullColumns??>
import javax.validation.constraints.*;
</#if>
<#if hasDateAnnotation>
import javax.persistence.Entity;
import javax.persistence.Table;
import org.hibernate.annotations.*;
</#if>
<#if hasTimestamp>
import java.util.Date;
</#if>
<#if hasBigDecimal>
import java.math.BigDecimal;
</#if>
import java.io.Serializable;

/**
* ${remark}实体类
* @author ${author}
* @date ${date}
*/
@Getter
@Setter
@ApiModel("${remark}")
@Alias("${className}")
@TableName("${tableName}")
public class ${className} extends BaseEntity implements Serializable {
/**
*
*/
private static final long serialVersionUID = 1L;

<#if columns??>
    <#list columns as column>
         <#if column.columnName?upper_case != 'CRT_USER_CODE' && column.columnName?upper_case != 'CRT_DATE'  && column.columnName?upper_case != 'CRT_ORG_CODE' &&  column.columnName?upper_case != 'UPD_USER_CODE' && column.columnName?upper_case != 'UPD_DATE'  && column.columnName?upper_case != 'UPD_ORG_CODE'>
            <#if column.remark != ''>
            /** ${column.remark} */
            @ApiModelProperty(value = "${column.remark}", dataType = " ${column.columnType}", example = "")
            </#if>
            <#if column.columnKey = 'PRI'>
            @TableId(type = IdType.ASSIGN_ID)
            </#if>
            @TableField("${column.columnName}")
            //@Column(name = "${column.columnName}"<#if column.columnKey = 'UNI'>,unique = true</#if><#if column.istNotNull && column.columnKey != 'PRI'>,nullable = false</#if>)
            <#if column.istNotNull && column.columnKey != 'PRI'>
                <#if column.columnType = 'String'>
            @NotBlank
                <#else>
            @NotNull
                </#if>
            </#if>
            <#if column.dateAnnotation??>
            <#if column.dateAnnotation = 'CreationTimestamp'>
            @CreationTimestamp
            <#else>
            @UpdateTimestamp
            </#if>
            </#if>
            private ${column.columnType} ${column.changeColumnName};
        </#if>
    </#list>
</#if>

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                <#list columns as column>
                     <#if column.columnName?upper_case != 'CRT_USER_CODE' && column.columnName?upper_case != 'CRT_DATE'  && column.columnName?upper_case != 'CRT_ORG_CODE' &&  column.columnName?upper_case != 'UPD_USER_CODE' && column.columnName?upper_case != 'UPD_DATE'  && column.columnName?upper_case != 'UPD_ORG_CODE'>
                    .append("${column.changeColumnName}", ${column.changeColumnName})
                    <#else>
                        .append("${column.changeColumnName}", super.${column.changeColumnName})
                    </#if>
                </#list>
                .toString();
    }
}