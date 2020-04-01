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
import java.math.BigDecimal;
import java.io.Serializable;

/**
* 基础指标规则过滤条件实体类
* @author Suny
* @date 2020-04-01
*/
@Getter
@Setter
@ApiModel("基础指标规则过滤条件")
@Alias("IndBaseRuleFilter")
@TableName("IND_BASE_RULE_FILTER")
public class IndBaseRuleFilter extends BaseEntity implements Serializable {
/**
*
*/
private static final long serialVersionUID = 1L;

            /** 指标规则ID */
            @ApiModelProperty(value = "指标规则ID", dataType = " String", example = "")
            @TableId(type = IdType.ASSIGN_ID)
            @TableField("ID")
            //@Column(name = "ID")
            private String id;
            /** 指标编号 */
            @ApiModelProperty(value = "指标编号", dataType = " String", example = "")
            @TableField("IE_CODE")
            //@Column(name = "IE_CODE")
            private String ieCode;
            /** 表达式序号 */
            @ApiModelProperty(value = "表达式序号", dataType = " BigDecimal", example = "")
            @TableField("EXP_SEQ")
            //@Column(name = "EXP_SEQ")
            private BigDecimal expSeq;
            /** 表达式前缀 */
            @ApiModelProperty(value = "表达式前缀", dataType = " String", example = "")
            @TableField("EXP_PREFIX")
            //@Column(name = "EXP_PREFIX")
            private String expPrefix;
            /** 表达式名称 */
            @ApiModelProperty(value = "表达式名称", dataType = " String", example = "")
            @TableField("EXP_NAME")
            //@Column(name = "EXP_NAME")
            private String expName;
            /** 运算符 */
            @ApiModelProperty(value = "运算符", dataType = " String", example = "")
            @TableField("EXP_SYMBOL")
            //@Column(name = "EXP_SYMBOL")
            private String expSymbol;
            /** 表达式值 */
            @ApiModelProperty(value = "表达式值", dataType = " String", example = "")
            @TableField("EXP_VALUE")
            //@Column(name = "EXP_VALUE")
            private String expValue;
            /** 表达式后缀 */
            @ApiModelProperty(value = "表达式后缀", dataType = " String", example = "")
            @TableField("EXP_POSTFIX")
            //@Column(name = "EXP_POSTFIX")
            private String expPostfix;
            /** 表达式值描述 */
            @ApiModelProperty(value = "表达式值描述", dataType = " String", example = "")
            @TableField("EXP_VALUE_DESC")
            //@Column(name = "EXP_VALUE_DESC")
            private String expValueDesc;

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                    .append("id", id)
                    .append("ieCode", ieCode)
                    .append("expSeq", expSeq)
                    .append("expPrefix", expPrefix)
                    .append("expName", expName)
                    .append("expSymbol", expSymbol)
                    .append("expValue", expValue)
                    .append("expPostfix", expPostfix)
                    .append("expValueDesc", expValueDesc)
                        .append("crtUserCode", super.crtUserCode)
                        .append("crtOrgCode", super.crtOrgCode)
                        .append("crtDate", super.crtDate)
                        .append("updUserCode", super.updUserCode)
                        .append("updOrgCode", super.updOrgCode)
                        .append("updDate", super.updDate)
                .toString();
    }
}