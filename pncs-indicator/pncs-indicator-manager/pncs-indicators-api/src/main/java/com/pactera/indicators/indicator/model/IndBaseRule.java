package com.pactera.indicators.indicator.model;

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
import javax.validation.constraints.*;
import java.util.Date;
import java.io.Serializable;

/**
* 基础指标规则实体类
* @author Suny
* @date 2020-04-01
*/
@Getter
@Setter
@ApiModel("基础指标规则")
@Alias("IndBaseRule")
@TableName("IND_BASE_RULE")
public class IndBaseRule extends BaseEntity implements Serializable {
/**
*
*/
private static final long serialVersionUID = 1L;

            /** 规则ID */
            @ApiModelProperty(value = "规则ID", dataType = " String", example = "")
            @TableId(type = IdType.ASSIGN_ID)
            @TableField("ID")
            //@Column(name = "ID")
            private String id;
            /** 指标编号 */
            @ApiModelProperty(value = "指标编号", dataType = " String", example = "")
            @TableField("IE_CODE")
            //@Column(name = "IE_CODE")
            private String ieCode;
            /** 状态(1-启用，0-禁用) */
            @ApiModelProperty(value = "状态(1-启用，0-禁用)", dataType = " String", example = "")
            @TableField("STATUS")
            //@Column(name = "STATUS")
            private String status;
            /** 数据源(默认本库) */
            @ApiModelProperty(value = "数据源(默认本库)", dataType = " String", example = "")
            @TableField("DATA_SOURCE")
            //@Column(name = "DATA_SOURCE")
            private String dataSource;
            /** 取数表达式 */
            @ApiModelProperty(value = "取数表达式", dataType = " String", example = "")
            @TableField("EXPRESSION")
            //@Column(name = "EXPRESSION")
            private String expression;
            /** 取数表名 */
            @ApiModelProperty(value = "取数表名", dataType = " String", example = "")
            @TableField("DATA_TABLE")
            //@Column(name = "DATA_TABLE")
            private String dataTable;
            /** 考核期/数据日期(对应的后台字段) */
            @ApiModelProperty(value = "考核期/数据日期(对应的后台字段)", dataType = " String", example = "")
            @TableField("PERIOD_CODE")
            //@Column(name = "PERIOD_CODE")
            private String periodCode;
            /** 规则说明 */
            @ApiModelProperty(value = "规则说明", dataType = " String", example = "")
            @TableField("RULE_DESC")
            //@Column(name = "RULE_DESC")
            private String ruleDesc;
            /** 是否可分析 */
            @ApiModelProperty(value = "是否可分析", dataType = " String", example = "")
            @TableField("ANALYSABLE")
            //@Column(name = "ANALYSABLE")
            private String analysable;

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                    .append("id", id)
                    .append("ieCode", ieCode)
                    .append("status", status)
                    .append("dataSource", dataSource)
                    .append("expression", expression)
                    .append("dataTable", dataTable)
                    .append("periodCode", periodCode)
                    .append("ruleDesc", ruleDesc)
                    .append("analysable", analysable)
                        .append("crtUserCode", super.crtUserCode)
                        .append("crtOrgCode", super.crtOrgCode)
                        .append("crtDate", super.crtDate)
                        .append("updUserCode", super.updUserCode)
                        .append("updOrgCode", super.updOrgCode)
                        .append("updDate", super.updDate)
                .toString();
    }
}