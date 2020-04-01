package com.pactera.indicators.datasource.model;

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

import javax.validation.constraints.NotBlank;
import java.io.Serializable;

/**
* 数据源实体类
* @author Suny
* @date 2020-04-01
*/
@Getter
@Setter
@ApiModel("数据源")
@Alias("IndDatasource")
@TableName("IND_DATASOURCE")
public class IndDatasource extends BaseEntity implements Serializable {
/**
*
*/
private static final long serialVersionUID = 1L;

            /** 数据源名称 */
            @ApiModelProperty(value = "数据源名称", dataType = " String", example = "")
            @TableField("DATASOURCE_NAME")
            //@Column(name = "DATASOURCE_NAME",nullable = false)
            @NotBlank
            private String datasourceName;
            /** 数据库类型 */
            @ApiModelProperty(value = "数据库类型", dataType = " String", example = "")
            @TableField("DATASOURCE_TYPE")
            //@Column(name = "DATASOURCE_TYPE",nullable = false)
            @NotBlank
            private String datasourceType;
            /** 数据库SCHEMA */
            @ApiModelProperty(value = "数据库SCHEMA", dataType = " String", example = "")
            @TableField("DATASOURCE_SCHEMA")
            //@Column(name = "DATASOURCE_SCHEMA",nullable = false)
            @NotBlank
            private String datasourceSchema;
            /** 数据库驱动 */
            @ApiModelProperty(value = "数据库驱动", dataType = " String", example = "")
            @TableField("DATASOURCE_DRIVER")
            //@Column(name = "DATASOURCE_DRIVER",nullable = false)
            @NotBlank
            private String datasourceDriver;
            /** 连接URL */
            @ApiModelProperty(value = "连接URL", dataType = " String", example = "")
            @TableField("DATASOURCE_URL")
            //@Column(name = "DATASOURCE_URL",nullable = false)
            @NotBlank
            private String datasourceUrl;
            /** 用户名 */
            @ApiModelProperty(value = "用户名", dataType = " String", example = "")
            @TableField("DATASOURCE_USER")
            //@Column(name = "DATASOURCE_USER",nullable = false)
            @NotBlank
            private String datasourceUser;
            /** 密码 */
            @ApiModelProperty(value = "密码", dataType = " String", example = "")
            @TableField("DATASOURCE_PASSWORD")
            //@Column(name = "DATASOURCE_PASSWORD",nullable = false)
            @NotBlank
            private String datasourcePassword;
            /** 描述 */
            @ApiModelProperty(value = "描述", dataType = " String", example = "")
            @TableField("DATASOURCE_DESC")
            //@Column(name = "DATASOURCE_DESC")
            private String datasourceDesc;
            /** 数据源ID */
            @ApiModelProperty(value = "数据源ID", dataType = " String", example = "")
            @TableId(type = IdType.ASSIGN_ID)
            @TableField("ID")
            //@Column(name = "ID")
            private String id;

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                    .append("datasourceName", datasourceName)
                    .append("datasourceType", datasourceType)
                    .append("datasourceSchema", datasourceSchema)
                    .append("datasourceDriver", datasourceDriver)
                    .append("datasourceUrl", datasourceUrl)
                    .append("datasourceUser", datasourceUser)
                    .append("datasourcePassword", datasourcePassword)
                    .append("datasourceDesc", datasourceDesc)
                        .append("crtUserCode", super.crtUserCode)
                        .append("crtOrgCode", super.crtOrgCode)
                        .append("crtDate", super.crtDate)
                        .append("updUserCode", super.updUserCode)
                        .append("updOrgCode", super.updOrgCode)
                        .append("updDate", super.updDate)
                    .append("id", id)
                .toString();
    }
}