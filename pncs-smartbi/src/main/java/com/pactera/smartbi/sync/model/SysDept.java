package com.pactera.smartbi.sync.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;
import java.util.Date;
import java.util.StringJoiner;

/**
 * 用户信息同步实体类
 *
 * @author Suny
 * @date 2020-04-22
 */
@Getter
@Setter
@ApiModel("机构信息同步")
@Alias("SysDept")
@TableName("SYS_DEPT")
public class SysDept implements Serializable {
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
     * 头像
     */
    @ApiModelProperty(value = "名称", dataType = "String", example = "")
    @TableField("name")
    //@Column(name = "avatar")
    private String name;
    /**
     * 邮箱
     */
    @ApiModelProperty(value = "上级ID", dataType = "String", example = "")
    @TableField("pid")
    //@Column(name = "email")
    private String pid;
    /**
     * 状态：1启用、0禁用
     */
    @ApiModelProperty(value = "状态：1启用、0禁用", dataType = "String", example = "")
    @TableField("enabled")
    //@Column(name = "enabled")
    private String enabled;

    /**
     * 创建日期
     */
    @ApiModelProperty(value = "创建日期", dataType = "Date", example = "")
    @TableField("create_time")
    //@Column(name = "create_time")
    private Date createTime;

    @Override
    public String toString() {
        return new StringJoiner(", ", SysDept.class.getSimpleName() + "[", "]")
                .add("id='" + id + "'")
                .add("name='" + name + "'")
                .add("pid='" + pid + "'")
                .add("enabled='" + enabled + "'")
                .add("createTime=" + createTime)
                .toString();
    }
}