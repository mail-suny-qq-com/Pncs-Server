package com.pactera.smartbi.sync.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.Objects;

/**
 * @author Suny
 * @date 2019-11-22
 */
@Getter
@Setter
@TableName("SYS_ROLE")
public class SysRole implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    @ApiModelProperty(value = "ID", dataType = "String", example = "")
    @TableId(type = IdType.ASSIGN_ID)
    @TableField("id")
    //@Column(name = "id")
    private String id;

    /**
     * 角色名称
     */
    @ApiModelProperty(value = "角色名称", dataType = " String", example = "")
    @TableField("NAME")
    //@Column(name = "CATEGORY_TYPE")
    private String name;
    /**
     * 备注
     */
    @ApiModelProperty(value = "备注", dataType = " String", example = "")
    @TableField("REMARK")
    //@Column(name = "CATEGORY_TYPE")
    private String remark;
    /**
     * 数据权限
     */
    @ApiModelProperty(value = "数据权限", dataType = " String", example = "")
    @TableField("DATA_SCOPE")
    //@Column(name = "CATEGORY_TYPE")
    private String dataScope;

    /**
     * 角色级别
     */
    @ApiModelProperty(value = "角色级别", dataType = " String", example = "")
    @TableField("ROLE_LEVEL")
    //@Column(name = "CATEGORY_TYPE")
    private BigDecimal roleLevel;


    /**
     * 创建时间
     */
    @ApiModelProperty(value = "创建时间", dataType = " String", example = "")
    @TableField("CREATE_TIME")
    //@Column(name = "CATEGORY_TYPE")
    private Date createTime;

    /**
     * 功能权限
     */
    @ApiModelProperty(value = "功能权限", dataType = " String", example = "")
    @TableField("PERMISSION")
    //@Column(name = "CATEGORY_TYPE")
    private String permission;

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        SysRole user = (SysRole) o;
        return Objects.equals(id, user.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name);
    }
}