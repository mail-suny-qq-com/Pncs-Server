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
@TableName("T_GROUP_USER")
public class SmartbiGroupUser implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    /**
     * 用户ID
     */
    @ApiModelProperty(value = "用户ID", dataType = " String", example = "")
    @TableId(type = IdType.ASSIGN_ID, value = "C_ID")
    //@Column(name = "ID")
    private String id;

    /**
     * 用户名称
     */
    @ApiModelProperty(value = "用户ID", dataType = " String", example = "")
    @TableField("C_USERID")
    //@Column(name = "CATEGORY_TYPE")
    private String userid;
    /**
     * 分类模块
     */
    @ApiModelProperty(value = "用户描述", dataType = " String", example = "")
    @TableField("C_GROUPID")
    //@Column(name = "CATEGORY_TYPE")
    private String groupid;
    /**
     * 用户密码
     */
    @ApiModelProperty(value = "用户密码", dataType = " String", example = "")
    @TableField("C_ISDEFAULT")
    //@Column(name = "CATEGORY_TYPE")
    private String isdefault;


    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        SmartbiGroupUser user = (SmartbiGroupUser) o;
        return Objects.equals(groupid, user.groupid) &&
                Objects.equals(userid, user.userid);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userid);
    }
}