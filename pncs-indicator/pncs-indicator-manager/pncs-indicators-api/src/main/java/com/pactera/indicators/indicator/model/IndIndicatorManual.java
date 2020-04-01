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
* 指标补录实体类
* @author Suny
* @date 2020-04-01
*/
@Getter
@Setter
@ApiModel("指标补录")
@Alias("IndIndicatorManual")
@TableName("IND_INDICATOR_MANUAL")
public class IndIndicatorManual extends BaseEntity implements Serializable {
/**
*
*/
private static final long serialVersionUID = 1L;

            /** 补录ID */
            @ApiModelProperty(value = "补录ID", dataType = " String", example = "")
            @TableId(type = IdType.ASSIGN_ID)
            @TableField("ID")
            //@Column(name = "ID")
            private String id;
            /** 指标编号 */
            @ApiModelProperty(value = "指标编号", dataType = " String", example = "")
            @TableField("IE_CODE")
            //@Column(name = "IE_CODE")
            private String ieCode;
            /** 指标名称 */
            @ApiModelProperty(value = "指标名称", dataType = " String", example = "")
            @TableField("IE_NAME")
            //@Column(name = "IE_NAME")
            private String ieName;
            /** 指标类型 */
            @ApiModelProperty(value = "指标类型", dataType = " String", example = "")
            @TableField("IE_TYPE")
            //@Column(name = "IE_TYPE")
            private String ieType;
            /** 指标结果 */
            @ApiModelProperty(value = "指标结果", dataType = " BigDecimal", example = "")
            @TableField("IE_VALUE")
            //@Column(name = "IE_VALUE")
            private BigDecimal ieValue;
            /** 指标计划值 */
            @ApiModelProperty(value = "指标计划值", dataType = " BigDecimal", example = "")
            @TableField("IE_PLAN_VALUE")
            //@Column(name = "IE_PLAN_VALUE")
            private BigDecimal iePlanValue;
            /** 计算周期 */
            @ApiModelProperty(value = "计算周期", dataType = " String", example = "")
            @TableField("PERIOD_CODE")
            //@Column(name = "PERIOD_CODE")
            private String periodCode;
            /** 对象编号 */
            @ApiModelProperty(value = "对象编号", dataType = " String", example = "")
            @TableField("OBJECT_CODE")
            //@Column(name = "OBJECT_CODE")
            private String objectCode;
            /** 对象类别(维度ID) */
            @ApiModelProperty(value = "对象类别(维度ID)", dataType = " String", example = "")
            @TableField("OBJECT_TYPE")
            //@Column(name = "OBJECT_TYPE")
            private String objectType;
            /** 状态 */
            @ApiModelProperty(value = "状态", dataType = " String", example = "")
            @TableField("STATUS")
            //@Column(name = "STATUS")
            private String status;
            /** 审核流程ID */
            @ApiModelProperty(value = "审核流程ID", dataType = " String", example = "")
            @TableField("PROCESS_INSTANCE_ID")
            //@Column(name = "PROCESS_INSTANCE_ID")
            private String processInstanceId;
            /** 结果保留期限（1,Y） */
            @ApiModelProperty(value = "结果保留期限（1,Y）", dataType = " String", example = "")
            @TableField("RETENTION")
            //@Column(name = "RETENTION")
            private String retention;

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                    .append("id", id)
                    .append("ieCode", ieCode)
                    .append("ieName", ieName)
                    .append("ieType", ieType)
                    .append("ieValue", ieValue)
                    .append("iePlanValue", iePlanValue)
                    .append("periodCode", periodCode)
                    .append("objectCode", objectCode)
                    .append("objectType", objectType)
                    .append("status", status)
                    .append("processInstanceId", processInstanceId)
                    .append("retention", retention)
                        .append("crtUserCode", super.crtUserCode)
                        .append("crtOrgCode", super.crtOrgCode)
                        .append("crtDate", super.crtDate)
                        .append("updUserCode", super.updUserCode)
                        .append("updOrgCode", super.updOrgCode)
                        .append("updDate", super.updDate)
                .toString();
    }
}