package com.pactera.indicators.category.model;

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
import java.util.List;

/**
 * 指标分类实体类
 *
 * @author Suny
 * @date 2020-04-01
 */
@Getter
@Setter
@ApiModel("指标分类")
@Alias("IndCategory")
@TableName("IND_CATEGORY")
public class IndCategory extends BaseEntity implements Serializable {
    /**
     *
     */
    private static final long serialVersionUID = 1L;

    /**
     * 分类ID
     */
    @ApiModelProperty(value = "分类ID", dataType = " String", example = "")
    @TableId(type = IdType.ASSIGN_ID)
    @TableField("ID")
    //@Column(name = "ID")
    private String id;
    /**
     * 分类模块
     */
    @ApiModelProperty(value = "分类模块", dataType = " String", example = "")
    @TableField("CATEGORY_TYPE")
    //@Column(name = "CATEGORY_TYPE")
    private String categoryType;
    /**
     * 分类名称
     */
    @ApiModelProperty(value = "分类名称", dataType = " String", example = "")
    @TableField("CATEGORY_NAME")
    //@Column(name = "CATEGORY_NAME")
    private String categoryName;
    /**
     * 分类描述
     */
    @ApiModelProperty(value = "分类描述", dataType = " String", example = "")
    @TableField("CATEGORY_DESC")
    //@Column(name = "CATEGORY_DESC")
    private String categoryDesc;
    /**
     * 父节点
     */
    @ApiModelProperty(value = "父节点", dataType = " String", example = "")
    @TableField("PARENT_ID")
    //@Column(name = "PARENT_ID")
    private String parentId;
    /**
     * 父节点
     */
    @ApiModelProperty(value = "子节点", dataType = " List", example = "")
    @TableField(exist = false)
    List<IndCategory> children;

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                .append("id", id)
                .append("categoryType", categoryType)
                .append("categoryName", categoryName)
                .append("categoryDesc", categoryDesc)
                .append("parentId", parentId)
                .append("crtUserCode", super.crtUserCode)
                .append("crtOrgCode", super.crtOrgCode)
                .append("crtDate", super.crtDate)
                .append("updUserCode", super.updUserCode)
                .append("updOrgCode", super.updOrgCode)
                .append("updDate", super.updDate)
                .toString();
    }
}