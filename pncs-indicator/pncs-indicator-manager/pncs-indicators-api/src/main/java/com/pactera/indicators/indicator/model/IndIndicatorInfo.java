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
* 指标基本信息实体类
* @author Suny
* @date 2020-04-01
*/
@Getter
@Setter
@ApiModel("指标基本信息")
@Alias("IndIndicatorInfo")
@TableName("IND_INDICATOR_INFO")
public class IndIndicatorInfo extends BaseEntity implements Serializable {
/**
*
*/
private static final long serialVersionUID = 1L;

            /** 指标ID */
            @ApiModelProperty(value = "指标ID", dataType = " String", example = "")
            @TableId(type = IdType.ASSIGN_ID)
            @TableField("ID")
            //@Column(name = "ID")
            private String id;
            /** 指标编号 */
            @ApiModelProperty(value = "指标编号", dataType = " String", example = "")
            @TableField("IE_CODE")
            //@Column(name = "IE_CODE",nullable = false)
            @NotBlank
            private String ieCode;
            /** 指标名称 */
            @ApiModelProperty(value = "指标名称", dataType = " String", example = "")
            @TableField("IE_NAME")
            //@Column(name = "IE_NAME")
            private String ieName;
            /** 指标分类ID(树状) */
            @ApiModelProperty(value = "指标分类ID(树状)", dataType = " String", example = "")
            @TableField("CATEGORY_ID")
            //@Column(name = "CATEGORY_ID")
            private String categoryId;
            /** 指标类别(1-财务类，2-经营类...) */
            @ApiModelProperty(value = "指标类别(1-财务类，2-经营类...)", dataType = " String", example = "")
            @TableField("IE_PROP")
            //@Column(name = "IE_PROP")
            private String ieProp;
            /** 指标类型(0-手工指标，1-基础指标，2-衍生指标，3-定性指标) */
            @ApiModelProperty(value = "指标类型(0-手工指标，1-基础指标，2-衍生指标，3-定性指标)", dataType = " String", example = "")
            @TableField("IE_TYPE")
            //@Column(name = "IE_TYPE")
            private String ieType;
            /** 指标描述 */
            @ApiModelProperty(value = "指标描述", dataType = " String", example = "")
            @TableField("IE_DESC")
            //@Column(name = "IE_DESC")
            private String ieDesc;
            /** 指标业务规则 */
            @ApiModelProperty(value = "指标业务规则", dataType = " String", example = "")
            @TableField("IE_RULE")
            //@Column(name = "IE_RULE")
            private String ieRule;
            /** 默认值 */
            @ApiModelProperty(value = "默认值", dataType = " BigDecimal", example = "")
            @TableField("IE_DEFAULT_VALUE")
            //@Column(name = "IE_DEFAULT_VALUE")
            private BigDecimal ieDefaultValue;
            /** 取值方式( 衍生指标时：1-四则运算，2-复杂SQL，3-限制，4-EXCEL公式) */
            @ApiModelProperty(value = "取值方式( 衍生指标时：1-四则运算，2-复杂SQL，3-限制，4-EXCEL公式)", dataType = " String", example = "")
            @TableField("IE_METHOD")
            //@Column(name = "IE_METHOD")
            private String ieMethod;
            /** 计算频度(D-天，M-月，Q-季度，Y-年) */
            @ApiModelProperty(value = "计算频度(D-天，M-月，Q-季度，Y-年)", dataType = " String", example = "")
            @TableField("CALC_FREQ")
            //@Column(name = "CALC_FREQ")
            private String calcFreq;
            /** 指标状态（0-已创建，1-已提交，2-已审批） */
            @ApiModelProperty(value = "指标状态（0-已创建，1-已提交，2-已审批）", dataType = " String", example = "")
            @TableField("STATUS")
            //@Column(name = "STATUS")
            private String status;
            /** 指标单位() */
            @ApiModelProperty(value = "指标单位()", dataType = " String", example = "")
            @TableField("IE_DATA_UNIT")
            //@Column(name = "IE_DATA_UNIT")
            private String ieDataUnit;
            /** 指标层级(根据依赖关系确定层级，基础指标为0) */
            @ApiModelProperty(value = "指标层级(根据依赖关系确定层级，基础指标为0)", dataType = " BigDecimal", example = "")
            @TableField("IE_LEVEL")
            //@Column(name = "IE_LEVEL")
            private BigDecimal ieLevel;
            /** 生效日期 */
            @ApiModelProperty(value = "生效日期", dataType = " Date", example = "")
            @TableField("START_DATE")
            //@Column(name = "START_DATE")
            private Date startDate;
            /** 失效日期 */
            @ApiModelProperty(value = "失效日期", dataType = " Date", example = "")
            @TableField("END_DATE")
            //@Column(name = "END_DATE")
            private Date endDate;
            /** 结果保留期限（1,Y） */
            @ApiModelProperty(value = "结果保留期限（1,Y）", dataType = " String", example = "")
            @TableField("RETENTION")
            //@Column(name = "RETENTION")
            private String retention;
            /** 审核流程ID */
            @ApiModelProperty(value = "审核流程ID", dataType = " String", example = "")
            @TableField("PROCESS_INSTANCE_ID")
            //@Column(name = "PROCESS_INSTANCE_ID")
            private String processInstanceId;
            /** 管理部门(解释部门) */
            @ApiModelProperty(value = "管理部门(解释部门)", dataType = " String", example = "")
            @TableField("MANAGE_DEPT")
            //@Column(name = "MANAGE_DEPT")
            private String manageDept;

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                    .append("id", id)
                    .append("ieCode", ieCode)
                    .append("ieName", ieName)
                    .append("categoryId", categoryId)
                    .append("ieProp", ieProp)
                    .append("ieType", ieType)
                    .append("ieDesc", ieDesc)
                    .append("ieRule", ieRule)
                    .append("ieDefaultValue", ieDefaultValue)
                    .append("ieMethod", ieMethod)
                    .append("calcFreq", calcFreq)
                    .append("status", status)
                    .append("ieDataUnit", ieDataUnit)
                    .append("ieLevel", ieLevel)
                    .append("startDate", startDate)
                    .append("endDate", endDate)
                    .append("retention", retention)
                    .append("processInstanceId", processInstanceId)
                    .append("manageDept", manageDept)
                        .append("crtUserCode", super.crtUserCode)
                        .append("crtOrgCode", super.crtOrgCode)
                        .append("crtDate", super.crtDate)
                        .append("updUserCode", super.updUserCode)
                        .append("updOrgCode", super.updOrgCode)
                        .append("updDate", super.updDate)
                .toString();
    }
}