package com.pactera.smartbi.sync.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;
import java.util.Date;

/**
* 用户信息同步实体类
* @author Suny
* @date 2020-04-22
*/
@Getter
@Setter
@ApiModel("用户信息同步")
@Alias("SysUser")
@TableName("SYS_USER")
public class SysUser implements Serializable {
/**
*
*/
private static final long serialVersionUID = 1L;

            /** ID */
            @ApiModelProperty(value = "ID", dataType = "String", example = "")
            @TableId(type = IdType.ASSIGN_ID,value="id")
            //@Column(name = "id")
            private String id;
            /** 头像 */
            @ApiModelProperty(value = "头像", dataType = "String", example = "")
            @TableField("avatar")
            //@Column(name = "avatar")
            private String avatar;
            /** 邮箱 */
            @ApiModelProperty(value = "邮箱", dataType = "String", example = "")
            @TableField("email")
            //@Column(name = "email")
            private String email;
            /** 状态：1启用、0禁用 */
            @ApiModelProperty(value = "状态：1启用、0禁用", dataType = "String", example = "")
            @TableField("enabled")
            //@Column(name = "enabled")
            private String enabled;
            /** 密码 */
            @ApiModelProperty(value = "密码", dataType = "String", example = "")
            @TableField("password")
            //@Column(name = "password")
            private String password;
            /** 用户名 */
            @ApiModelProperty(value = "用户名", dataType = "String", example = "")
            @TableField("username")
            //@Column(name = "username")
            private String username;
            /** 部门名称 */
            @ApiModelProperty(value = "部门名称", dataType = "String", example = "")
            @TableField("dept_id")
            //@Column(name = "dept_id")
            private String deptId;
            /** 手机号码 */
            @ApiModelProperty(value = "手机号码", dataType = "String", example = "")
            @TableField("phone")
            //@Column(name = "phone")
            private String phone;
            /** 岗位名称 */
            @ApiModelProperty(value = "岗位名称", dataType = "String", example = "")
            @TableField("job_id")
            //@Column(name = "job_id")
            private String jobId;
            /** 创建日期 */
            @ApiModelProperty(value = "创建日期", dataType = "Date", example = "")
            @TableField("create_time")
            //@Column(name = "create_time")
            private Date createTime;
            /** 最后修改密码的日期 */
            @ApiModelProperty(value = "最后修改密码的日期", dataType = "Date", example = "")
            @TableField("last_password_reset_time")
            //@Column(name = "last_password_reset_time")
            private Date lastPasswordResetTime;
            @TableField("nick_name")
            //@Column(name = "nick_name")
            private String nickName;
            @TableField("sex")
            //@Column(name = "sex")
            private String sex;

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                    .append("id", id)
                    .append("avatar", avatar)
                    .append("email", email)
                    .append("enabled", enabled)
                    .append("password", password)
                    .append("username", username)
                    .append("deptId", deptId)
                    .append("phone", phone)
                    .append("jobId", jobId)
                    .append("createTime", createTime)
                    .append("lastPasswordResetTime", lastPasswordResetTime)
                    .append("nickName", nickName)
                    .append("sex", sex)
                .toString();
    }
}