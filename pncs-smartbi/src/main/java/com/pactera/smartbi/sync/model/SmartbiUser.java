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
@TableName("T_USER")
public class SmartbiUser implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    /**
     * 用户ID
     */
    @ApiModelProperty(value = "用户ID", dataType = " String", example = "")
    @TableId(type = IdType.ASSIGN_ID)
    @TableField("C_USERID")
    //@Column(name = "ID")
    private String id;

    /**
     * 用户名称
     */
    @ApiModelProperty(value = "用户名称", dataType = " String", example = "")
    @TableField("C_USERNAME")
    //@Column(name = "CATEGORY_TYPE")
    private String username;
    /**
     * 分类模块
     */
    @ApiModelProperty(value = "用户描述", dataType = " String", example = "")
    @TableField("C_USERDESC")
    //@Column(name = "CATEGORY_TYPE")
    private String userdesc;
    /**
     * 用户密码
     */
    @ApiModelProperty(value = "用户密码", dataType = " String", example = "")
    @TableField("C_USERPWD")
    //@Column(name = "CATEGORY_TYPE")
    private String userpwd;

    /**
     * 用户别名
     */
    @ApiModelProperty(value = "用户别名", dataType = " String", example = "")
    @TableField("C_USERALIAS")
    //@Column(name = "CATEGORY_TYPE")
    private String useralias;

    /**
     * 启用状态
     */
    @ApiModelProperty(value = "启用状态", dataType = " String", example = "")
    @TableField("C_ISENABLED")
    //@Column(name = "CATEGORY_TYPE")
    private String isenabled;


    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        SmartbiUser user = (SmartbiUser) o;
        return Objects.equals(id, user.id) &&
                Objects.equals(username, user.username);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, username);
    }
}