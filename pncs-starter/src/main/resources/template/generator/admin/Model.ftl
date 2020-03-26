package ${package}.model;

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

    <#if column.remark != ''>
    /** ${column.remark} */
    @ApiModelProperty(value = "${column.remark}", dataType = " ${column.columnType}", example = "")
    </#if>
    <#if column.columnKey = 'PRI'>
    @TableId(type = IdType.ID_WORKER_STR)
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
    </#list>
</#if>

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                <#list columns as column>
                    .append("${column.changeColumnName}", ${column.changeColumnName})
                </#list>
                .toString();
    }
}