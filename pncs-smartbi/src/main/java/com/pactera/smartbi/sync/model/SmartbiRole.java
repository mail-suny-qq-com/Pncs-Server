package com.pactera.smartbi.sync.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.Objects;

/**
 * @author Suny
 * @date 2019-11-22
 */
@Getter
@Setter
@TableName("T_ROLE")
public class SmartbiRole implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    @ApiModelProperty(value = "ID", dataType = "String", example = "")
    @TableId(type = IdType.ASSIGN_ID, value = "C_ROLEID")
    //@Column(name = "id")
    private String id;

    /**
     * 角色名称
     */
    @ApiModelProperty(value = "角色名称", dataType = " String", example = "")
    @TableField("C_ROLENAME")
    //@Column(name = "CATEGORY_TYPE")
    private String rolename;
    /**
     * 备注
     */
    @ApiModelProperty(value = "备注", dataType = " String", example = "")
    @TableField("C_SYSID")
    //@Column(name = "CATEGORY_TYPE")
    private String sysid;
    /**
     * 数据权限
     */
    @ApiModelProperty(value = "描述", dataType = " String", example = "")
    @TableField("C_ROLEDESC")
    //@Column(name = "CATEGORY_TYPE")
    private String roledesc;

    /**
     * 角色别名
     */
    @ApiModelProperty(value = "角色别名", dataType = " String", example = "")
    @TableField("C_ROLEALIAS")
    //@Column(name = "CATEGORY_TYPE")
    private String rolealias;


    /**
     * 功能权限
     */
    @ApiModelProperty(value = "分组", dataType = " String", example = "")
    @TableField("C_GROUPID")
    //@Column(name = "CATEGORY_TYPE")
    private String groupid;

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        SmartbiRole user = (SmartbiRole) o;
        return Objects.equals(id, user.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, rolename);
    }
}