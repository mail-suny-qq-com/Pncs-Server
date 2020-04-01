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
* 衍生指标规则表实体类
* @author Suny
* @date 2020-04-01
*/
@Getter
@Setter
@ApiModel("衍生指标规则表")
@Alias("IndDeriveRule")
@TableName("IND_DERIVE_RULE")
public class IndDeriveRule extends BaseEntity implements Serializable {
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
            /** 规则类型(1-四则运算，2-SQL公式，3-限制，4-EXCEL公式) */
            @ApiModelProperty(value = "规则类型(1-四则运算，2-SQL公式，3-限制，4-EXCEL公式)", dataType = " String", example = "")
            @TableField("RULE_TYPE")
            //@Column(name = "RULE_TYPE")
            private String ruleType;
            /** 计算规则(四则公式/SQL公式/EXCEL公式) */
            @ApiModelProperty(value = "计算规则(四则公式/SQL公式/EXCEL公式)", dataType = " String", example = "")
            @TableField("CALC_RULE")
            //@Column(name = "CALC_RULE")
            private String calcRule;
            /** 规则说明 */
            @ApiModelProperty(value = "规则说明", dataType = " String", example = "")
            @TableField("RULE_DESC")
            //@Column(name = "RULE_DESC")
            private String ruleDesc;

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                    .append("id", id)
                    .append("ieCode", ieCode)
                    .append("status", status)
                    .append("ruleType", ruleType)
                    .append("calcRule", calcRule)
                    .append("ruleDesc", ruleDesc)
                        .append("crtUserCode", super.crtUserCode)
                        .append("crtOrgCode", super.crtOrgCode)
                        .append("crtDate", super.crtDate)
                        .append("updUserCode", super.updUserCode)
                        .append("updOrgCode", super.updOrgCode)
                        .append("updDate", super.updDate)
                .toString();
    }
}