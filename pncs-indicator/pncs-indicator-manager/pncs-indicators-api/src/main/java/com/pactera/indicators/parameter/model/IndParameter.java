package com.pactera.indicators.parameter.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pactera.core.model.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
* 指标参数实体类
* @author Suny
* @date 2020-04-01
*/
@Getter
@Setter
@ApiModel("指标参数")
@Alias("IndParameter")
@TableName("IND_PARAMETER")
public class IndParameter extends BaseEntity implements Serializable {
/**
*
*/
private static final long serialVersionUID = 1L;


    /** 参数ID */
    @ApiModelProperty(value = "参数ID", dataType = " String", example = "")
    @TableId(type = IdType.ASSIGN_ID)
    @TableField("ID")
    //@Column(name = "ID")
    private String id;

    /** 参数类型 */
    @ApiModelProperty(value = "参数类型", dataType = " String", example = "")
    @TableField("CATEGORY_ID")
    //@Column(name = "CATEGORY_ID")
    private String categoryId;

    /** 参数编号 */
    @ApiModelProperty(value = "参数编号", dataType = " String", example = "")
    @TableField("PARM_CODE")
    //@Column(name = "PARM_CODE")
    private String parmCode;

    /** 参数名称 */
    @ApiModelProperty(value = "参数名称", dataType = " String", example = "")
    @TableField("PARM_NAME")
    //@Column(name = "PARM_NAME")
    private String parmName;

    /** 参数值类型 */
    @ApiModelProperty(value = "参数值类型", dataType = " String", example = "")
    @TableField("PARM_TYPE")
    //@Column(name = "PARM_TYPE")
    private String parmType;

    /** 参数值 */
    @ApiModelProperty(value = "参数值", dataType = " String", example = "")
    @TableField("PARM_VALUE")
    //@Column(name = "PARM_VALUE")
    private String parmValue;

    /** 参数描述 */
    @ApiModelProperty(value = "参数描述", dataType = " String", example = "")
    @TableField("PARM_DESC")
    //@Column(name = "PARM_DESC")
    private String parmDesc;

    /** 状态(1-启用，0-停用) */
    @ApiModelProperty(value = "状态(1-启用，0-停用)", dataType = " String", example = "")
    @TableField("STATUS")
    //@Column(name = "STATUS")
    private String status;

    @ApiModelProperty(value = "分类查询条件", dataType = "List", example = "")
    @TableField(exist = false)
    //@Column(name = "")
    private List<String> categoryIds;
    @Override
    public String toString() {
        return new ToStringBuilder(this)
                    .append("id", id)
                    .append("categoryId", categoryId)
                    .append("parmCode", parmCode)
                    .append("parmName", parmName)
                    .append("parmType", parmType)
                    .append("parmValue", parmValue)
                    .append("parmDesc", parmDesc)
                    .append("status", status)
                    .append("crtUserCode", super.crtUserCode)
                    .append("crtOrgCode", super.crtOrgCode)
                    .append("crtDate", super.crtDate)
                    .append("updUserCode", super.updUserCode)
                    .append("updOrgCode", super.updOrgCode)
                    .append("updDate", super.updDate)
                .toString();
    }
}