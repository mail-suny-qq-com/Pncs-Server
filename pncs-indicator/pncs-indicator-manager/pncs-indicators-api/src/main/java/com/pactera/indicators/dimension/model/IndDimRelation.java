package com.pactera.indicators.dimension.model;

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
* 维度关系表实体类
* @author Suny
* @date 2020-04-01
*/
@Getter
@Setter
@ApiModel("维度关系表")
@Alias("IndDimRelation")
@TableName("IND_DIM_RELATION")
public class IndDimRelation extends BaseEntity implements Serializable {
/**
*
*/
private static final long serialVersionUID = 1L;

            /** 关系ID */
            @ApiModelProperty(value = "关系ID", dataType = " String", example = "")
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
            /** 维度编号 */
            @ApiModelProperty(value = "维度编号", dataType = " BigDecimal", example = "")
            @TableField("DIM_CODE")
            //@Column(name = "DIM_CODE")
            private BigDecimal dimCode;
            /** 主维度(分析指标用) */
            @ApiModelProperty(value = "主维度(分析指标用)", dataType = " String", example = "")
            @TableField("IS_MAIN")
            //@Column(name = "IS_MAIN")
            private String isMain;
            /** 数据表字段 */
            @ApiModelProperty(value = "数据表字段", dataType = " String", example = "")
            @TableField("TABLE_COLUMN")
            //@Column(name = "TABLE_COLUMN")
            private String tableColumn;
            /** 维度对应字段 */
            @ApiModelProperty(value = "维度对应字段", dataType = " String", example = "")
            @TableField("DIM_COLUMN")
            //@Column(name = "DIM_COLUMN")
            private String dimColumn;
            /** 备注 */
            @ApiModelProperty(value = "备注", dataType = " String", example = "")
            @TableField("REMARK")
            //@Column(name = "REMARK")
            private String remark;
            /** 序号 */
            @ApiModelProperty(value = "序号", dataType = " BigDecimal", example = "")
            @TableField("DIM_SEQ")
            //@Column(name = "DIM_SEQ")
            private BigDecimal dimSeq;

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                    .append("id", id)
                    .append("ruleId", ruleId)
                    .append("ieCode", ieCode)
                    .append("dimCode", dimCode)
                    .append("isMain", isMain)
                    .append("tableColumn", tableColumn)
                    .append("dimColumn", dimColumn)
                    .append("remark", remark)
                    .append("dimSeq", dimSeq)
                        .append("crtUserCode", super.crtUserCode)
                        .append("crtOrgCode", super.crtOrgCode)
                        .append("crtDate", super.crtDate)
                        .append("updUserCode", super.updUserCode)
                        .append("updOrgCode", super.updOrgCode)
                        .append("updDate", super.updDate)
                .toString();
    }
}