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
@TableName("T_GROUP")
public class SmartbiGroup implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    /**
     * 组ID
     */
    @ApiModelProperty(value = "组ID", dataType = " String", example = "")
    @TableId(type = IdType.ASSIGN_ID, value = "C_GROUPID")
    //@Column(name = "ID")
    private String id;

    /**
     * 组名称
     */
    @ApiModelProperty(value = "组名称", dataType = " String", example = "")
    @TableField("C_GROUPNAME")
    //@Column(name = "CATEGORY_TYPE")
    private String groupname;
    /**
     * 组描述
     */
    @ApiModelProperty(value = "组描述", dataType = " String", example = "")
    @TableField("C_GROUPDESC")
    //@Column(name = "CATEGORY_TYPE")
    private String groupdesc;
    /**
     * 组编号
     */
    @ApiModelProperty(value = "组编号", dataType = " String", example = "")
    @TableField("C_ORGID")
    //@Column(name = "CATEGORY_TYPE")
    private String orgid;

    /**
     * 组别名
     */
    @ApiModelProperty(value = "组别名", dataType = " String", example = "")
    @TableField("C_GROUPALIAS")
    //@Column(name = "CATEGORY_TYPE")
    private String groupalias;

    /**
     * 上级组点ID
     */
    @ApiModelProperty(value = "上级组点ID", dataType = " String", example = "")
    @TableField("C_PGROUPID")
    //@Column(name = "CATEGORY_TYPE")
    private String pgroupid;


    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        SmartbiGroup user = (SmartbiGroup) o;
        return Objects.equals(id, user.id) &&
                Objects.equals(orgid, user.orgid);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, orgid);
    }
}