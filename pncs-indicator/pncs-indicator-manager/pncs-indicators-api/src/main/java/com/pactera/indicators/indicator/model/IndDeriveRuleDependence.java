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
* 衍生指标规则依赖关系表实体类
* @author Suny
* @date 2020-04-01
*/
@Getter
@Setter
@ApiModel("衍生指标规则依赖关系表")
@Alias("IndDeriveRuleDependence")
@TableName("IND_DERIVE_RULE_DEPENDENCE")
public class IndDeriveRuleDependence extends BaseEntity implements Serializable {
/**
*
*/
private static final long serialVersionUID = 1L;

            /** 依赖ID */
            @ApiModelProperty(value = "依赖ID", dataType = " String", example = "")
            @TableId(type = IdType.ASSIGN_ID)
            @TableField("ID")
            //@Column(name = "ID")
            private String id;
            /** 规则ID */
            @ApiModelProperty(value = "规则ID", dataType = " String", example = "")
            @TableField("RULE_ID")
            //@Column(name = "RULE_ID")
            private String ruleId;
            /** 指标编号 */
            @ApiModelProperty(value = "指标编号", dataType = " String", example = "")
            @TableField("IE_CODE")
            //@Column(name = "IE_CODE")
            private String ieCode;
            /** 依赖指标类型(1-基础，2-衍生指标，3-参数) */
            @ApiModelProperty(value = "依赖指标类型(1-基础，2-衍生指标，3-参数)", dataType = " String", example = "")
            @TableField("DEPEND_TYPE")
            //@Column(name = "DEPEND_TYPE")
            private String dependType;
            /** 依赖指标编号 */
            @ApiModelProperty(value = "依赖指标编号", dataType = " String", example = "")
            @TableField("DEPEND_CODE")
            //@Column(name = "DEPEND_CODE")
            private String dependCode;
            /** 数据标志（备用，0-自身，1-父级，9-全辖） */
            @ApiModelProperty(value = "数据标志（备用，0-自身，1-父级，9-全辖）", dataType = " String", example = "")
            @TableField("DATA_FLAG")
            //@Column(name = "DATA_FLAG")
            private String dataFlag;
            /** 值标志(0-指标值,1-计划值，2-调整值，3-原始值) */
            @ApiModelProperty(value = "值标志(0-指标值,1-计划值，2-调整值，3-原始值)", dataType = " String", example = "")
            @TableField("VALUE_FLAG")
            //@Column(name = "VALUE_FLAG")
            private String valueFlag;

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                    .append("id", id)
                    .append("ruleId", ruleId)
                    .append("ieCode", ieCode)
                    .append("dependType", dependType)
                    .append("dependCode", dependCode)
                    .append("dataFlag", dataFlag)
                    .append("valueFlag", valueFlag)
                        .append("crtUserCode", super.crtUserCode)
                        .append("crtOrgCode", super.crtOrgCode)
                        .append("crtDate", super.crtDate)
                        .append("updUserCode", super.updUserCode)
                        .append("updOrgCode", super.updOrgCode)
                        .append("updDate", super.updDate)
                .toString();
    }
}