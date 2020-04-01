package com.pactera.indicators.dimension.model;

import lombok.Getter;
import lombok.Setter;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.pactera.core.model.BaseEntity;
import com.pactera.core.util.BeanUtil;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;
import javax.validation.constraints.*;
import java.util.Date;
import java.io.Serializable;

/**
* 维度管理实体类
* @author Suny
* @date 2020-04-01
*/
@Getter
@Setter
@ApiModel("维度管理")
@Alias("IndDimension")
@TableName("IND_DIMENSION")
public class IndDimension extends BaseEntity implements Serializable {
/**
*
*/
private static final long serialVersionUID = 1L;

            /** 维度ID */
            @ApiModelProperty(value = "维度ID", dataType = " String", example = "")
            @TableId(type = IdType.ASSIGN_ID)
            @TableField("ID")
            //@Column(name = "ID")
            private String id;
            /** 维度编号 */
            @ApiModelProperty(value = "维度编号", dataType = " String", example = "")
            @TableField("DIM_CODE")
            //@Column(name = "DIM_CODE")
            private String dimCode;
            /** 数据源ID(预留) */
            @ApiModelProperty(value = "数据源ID(预留)", dataType = " String", example = "")
            @TableField("DATASOURCE_ID")
            //@Column(name = "DATASOURCE_ID")
            private String datasourceId;
            /** 维度名称 */
            @ApiModelProperty(value = "维度名称", dataType = " String", example = "")
            @TableField("DIM_NAME")
            //@Column(name = "DIM_NAME")
            private String dimName;
            /** 维表表名称 */
            @ApiModelProperty(value = "维表表名称", dataType = " String", example = "")
            @TableField("TABLE_NAME")
            //@Column(name = "TABLE_NAME")
            private String tableName;
            /** 维度显示字段(可多字段逗号隔开) */
            @ApiModelProperty(value = "维度显示字段(可多字段逗号隔开)", dataType = " String", example = "")
            @TableField("NAME_COLUMN")
            //@Column(name = "NAME_COLUMN")
            private String nameColumn;
            /** 维度显示字段描述(可多字段逗号隔开) */
            @ApiModelProperty(value = "维度显示字段描述(可多字段逗号隔开)", dataType = " String", example = "")
            @TableField("NAME_COLUMN_DESC")
            //@Column(name = "NAME_COLUMN_DESC")
            private String nameColumnDesc;
            /** 代码字段(用户管理指标对象) */
            @ApiModelProperty(value = "代码字段(用户管理指标对象)", dataType = " String", example = "")
            @TableField("CODE_COLUMN")
            //@Column(name = "CODE_COLUMN")
            private String codeColumn;
            /** 代码字段描述 */
            @ApiModelProperty(value = "代码字段描述", dataType = " String", example = "")
            @TableField("CODE_COLUMN_DESC")
            //@Column(name = "CODE_COLUMN_DESC")
            private String codeColumnDesc;
            /** 父ID(预留) */
            @ApiModelProperty(value = "父ID(预留)", dataType = " String", example = "")
            @TableField("PID")
            //@Column(name = "PID")
            private String pid;
            /** 级别(预留) */
            @ApiModelProperty(value = "级别(预留)", dataType = " String", example = "")
            @TableField("LEVEL")
            //@Column(name = "LEVEL")
            private String level;
            /** 别名 */
            @ApiModelProperty(value = "别名", dataType = " String", example = "")
            @TableField("ALIAS")
            //@Column(name = "ALIAS")
            private String alias;
            /** 主键标志 */
            @ApiModelProperty(value = "主键标志", dataType = " String", example = "")
            @TableField("PK_FLAG")
            //@Column(name = "PK_FLAG")
            private String pkFlag;

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                    .append("id", id)
                    .append("dimCode", dimCode)
                    .append("datasourceId", datasourceId)
                    .append("dimName", dimName)
                    .append("tableName", tableName)
                    .append("nameColumn", nameColumn)
                    .append("nameColumnDesc", nameColumnDesc)
                    .append("codeColumn", codeColumn)
                    .append("codeColumnDesc", codeColumnDesc)
                    .append("pid", pid)
                    .append("level", level)
                    .append("alias", alias)
                    .append("pkFlag", pkFlag)
                        .append("crtUserCode", super.crtUserCode)
                        .append("crtOrgCode", super.crtOrgCode)
                        .append("crtDate", super.crtDate)
                        .append("updUserCode", super.updUserCode)
                        .append("updOrgCode", super.updOrgCode)
                        .append("updDate", super.updDate)
                .toString();
    }
}