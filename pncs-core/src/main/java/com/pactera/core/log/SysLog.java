package com.pactera.core.log;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;
import java.util.Date;

/**
 * 系统管理->系统管理-系统操作日志表bean Log类
 *
 * @author allen
 * @date 2019/02/21
 */
@Alias("SysLog")
@TableName("SYS_LOG")
public class SysLog implements Serializable {

    private static final long serialVersionUID = 1L;


    /**
     * ID
     */
    @TableId
    @TableField(value = "LOG_ID")
    private String logId;

    /**
     * 创建人
     */
    @TableField(value = "CRT_USER_CODE")
    private String crtUserCode;

    /**
     * 创建机构
     */
    @TableField(value = "CRT_ORG_CODE")
    private String crtOrgCode;

    /**
     * 创建日期
     */
    @TableField(value = "CRT_DATE")
    private Date crtDate;

    /**
     * 修改人
     */
    @TableField(value = "UPD_USER_CODE")
    private String updUserCode;

    /**
     * 修改机构
     */
    @TableField(value = "UPD_ORG_CODE")
    private String updOrgCode;

    /**
     * 修改日期
     */
    @TableField(value = "UPD_DATE")
    private Date updDate;

    /**
     * 操作用户编号
     */
    @TableField(value = "USER_CODE")
    private String userCode;

    /**
     * 操作用户名称
     */
    @TableField(value = "USER_NAME")
    private String userName;

    /**
     * 模块
     */
    @TableField(value = "MODULE")
    private String module;

    /**
     * 操作内容
     */
    @TableField(value = "ACTION")
    private String action;
    /**
     * 操作时间
     */
    @TableField(value = "OPT_DATE")
    private Date optDate;
    /**
     * 客户端IP地址
     */
    @TableField(value = "CLIENT_IP")
    private String clientIp;

    /**
     * 执行方法名
     */
    @TableField(value = "METHOD")
    private String method;

    /**
     * 输入参数
     */
    @TableField(value = "PARAMS")
    private String params;

    /**
     * 描述
     */
    @TableField(value = "OPT_DESC")
    private String optDesc;


    public String getLogId() {
        return this.logId;
    }

    public void setLogId(String logId) {
        this.logId = logId;
    }

    public String getCrtUserCode() {
        return this.crtUserCode;
    }

    public void setCrtUserCode(String crtUserCode) {
        this.crtUserCode = crtUserCode;
    }

    public String getCrtOrgCode() {
        return this.crtOrgCode;
    }

    public void setCrtOrgCode(String crtOrgCode) {
        this.crtOrgCode = crtOrgCode;
    }

    public Date getCrtDate() {
        return this.crtDate;
    }

    public void setCrtDate(Date crtDate) {
        this.crtDate = crtDate;
    }

    public String getUpdUserCode() {
        return this.updUserCode;
    }

    public void setUpdUserCode(String updUserCode) {
        this.updUserCode = updUserCode;
    }

    public String getUpdOrgCode() {
        return this.updOrgCode;
    }

    public void setUpdOrgCode(String updOrgCode) {
        this.updOrgCode = updOrgCode;
    }

    public Date getUpdDate() {
        return this.updDate;
    }

    public void setUpdDate(Date updDate) {
        this.updDate = updDate;
    }

    public String getUserCode() {
        return this.userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getModule() {
        return this.module;
    }

    public void setModule(String module) {
        this.module = module;
    }

    public String getAction() {
        return this.action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getClientIp() {
        return this.clientIp;
    }

    public void setClientIp(String clientIp) {
        this.clientIp = clientIp;
    }

    public String getMethod() {
        return this.method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public String getParams() {
        return this.params;
    }

    public void setParams(String params) {
        this.params = params;
    }

    public String getOptDesc() {
        return this.optDesc;
    }

    public void setOptDesc(String optDesc) {
        this.optDesc = optDesc;
    }

    public Date getOptDate() {
        return optDate;
    }

    public void setOptDate(Date optDate) {
        this.optDate = optDate;
    }
}