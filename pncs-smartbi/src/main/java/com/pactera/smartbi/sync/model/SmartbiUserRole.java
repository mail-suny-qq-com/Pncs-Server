package com.pactera.smartbi.sync.model;

import com.baomidou.mybatisplus.annotation.TableField;
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
@TableName("T_USER_ROLE")
public class SmartbiUserRole implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    /**
     * 用户ID
     */
    @ApiModelProperty(value = "用户ID", dataType = " String", example = "")
    //@TableId(type = IdType.ASSIGN_ID, value = "USER_ID")
    @TableField("USER_ID")
    private String userId;

    /**
     * 用户名称
     */
    @ApiModelProperty(value = "用户名称", dataType = " String", example = "")
    @TableField("ROLE_ID")
    //@Column(name = "CATEGORY_TYPE")
    private String roleId;


    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        SmartbiUserRole user = (SmartbiUserRole) o;
        return Objects.equals(userId, user.userId) &&
                Objects.equals(roleId, user.roleId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userId, roleId);
    }
}