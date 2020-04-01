package com.pactera.core.util;

import cn.hutool.json.JSONObject;
import com.pactera.core.customise.mapper.CommonMapper;
import com.pactera.core.base.model.GlobalUser;
import com.pactera.core.exception.BusinessException;
import org.apache.commons.lang.StringUtils;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author Suny
 * @date 2019-1-21
 */
public class SystemUtil {
    static CommonMapper commonMapper;

    //static HttpServletRequest request;

    static {
        commonMapper = (CommonMapper) SpringUtil.getBean("commonMapper");
        //request = (HttpServletRequest) SpringUtil.getBean(HttpServletRequest.class);
    }

    /**
     * 获取当前登录用户
     *
     * @return
     */
    public static GlobalUser getCurrentUser() {
        GlobalUser gu = new GlobalUser();
        //SecurityUtils
        //HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        //return (GlobalUser) request.getSession().getAttribute(Global.USER);
        gu.setUserCode(getUsername());
        gu.setUserName(getNickName());
        gu.setOrgCode(getDeptId());
        return gu;
    }

    public static UserDetails getUserDetails() {
        UserDetails userDetails;
        try {
            userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        } catch (Exception e) {
            throw new BusinessException(HttpStatus.UNAUTHORIZED.value(), "登录状态过期");
        }
        return userDetails;
    }

    /**
     * 获取系统用户名称
     *
     * @return 系统用户名称
     */
    public static String getUsername() {
        Object obj = getUserDetails();
        return new JSONObject(obj).get("username", String.class);
    }

    /**
     * 获取系统用户中文名称
     *
     * @return 系统用户中文名称
     */
    public static String getNickName() {
        Object obj = getUserDetails();
        JSONObject json = new JSONObject(obj);
        return json.get("nickName", String.class);
    }

    /**
     * 获取系统用户id
     *
     * @return 系统用户id
     */
    public static String getUserId() {
        Object obj = getUserDetails();
        JSONObject json = new JSONObject(obj);
        return json.get("id", String.class);
    }

    /**
     * 获取系统用户归属机构ID
     *
     * @return 用户归属机构ID
     */
    public static String getDeptId() {
        Object obj = getUserDetails();
        JSONObject json = new JSONObject(obj);
        return json.get("deptId", String.class);
    }

    /**
     * 获取用户角色ID集合
     *
     * @return 用户角色ID集合
     */
    public static List<String> roleIds() {
        Object obj = getUserDetails();
        JSONObject json = new JSONObject(obj);
        return json.get("roleIds", List.class);
    }

    /**
     * 获取数据权限类型
     *
     * @return
     */
    public static String getAuthType() {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String url = request.getHeader("client_page");
        String dataAuthType = commonMapper.getDataAuthByUserCode(url, getCurrentUser().getUserCode());
        if (StringUtils.isEmpty(dataAuthType)) {
            Map<String, Object> org = commonMapper.findOrgInfoByOrgCode(getCurrentUser().getOrgCode());
            dataAuthType = (String) org.get("ORG_LEVEL");
        }
        return dataAuthType;
    }

    /**
     * 查询当前用户机构权限sql串
     *
     * @return
     */
    public static String getOrgAuthStatement() {
        String dataAuthType = getAuthType();
        if ("0".equals(dataAuthType)) {
            return " !='-_-'";
        } else {
            return getWhereSQL(getAuthOrgCodes());
        }
        // return " = '" + getCurrentUser().getOrgCode() + "'";
    }

    /**
     * 根据数据集拼接where片段
     *
     * @param authDatas
     * @return
     */
    public static String getWhereSQL(List<String> authDatas) {
        StringBuffer filterBuffer = new StringBuffer();
        if (authDatas != null) {
            filterBuffer.append(" in (");
            for (String inStr : authDatas) {
                filterBuffer.append("'" + inStr + "',");
            }
            filterBuffer.append("'-_-')");
        }
        return filterBuffer.toString();
    }

    /**
     * 根据所属机构号和权限层级查询所有有权限的顶层机构编号
     *
     * @return
     */
    public static String getAuthRootOrgCode() {
        String orgCode = getCurrentUser().getOrgCode();
        String dataAuthType = getAuthType();
        Map<String, Object> org = commonMapper.findOrgInfoByOrgCode(orgCode);
        while (dataAuthType.compareTo((String) org.get("ORG_LEVEL")) < 0 && !"0".equalsIgnoreCase((String) org.get("PARENT_ORG_CODE"))) {
            org = commonMapper.findParentOrgByOrgCode((String) org.get("ORG_CODE"));
        }
        return (String) org.get("ORG_CODE");
    }


    /**
     * 根据所属机构号和权限层级查询所有有权限的机构编号
     *
     * @return
     */
    public static List<String> getAuthOrgCodes() {
        List<String> orgCodes = new ArrayList<>();
        String rootOrgCode = getAuthRootOrgCode();
        orgCodes.add(rootOrgCode);
        orgCodes = getChildrenOrgs(rootOrgCode, orgCodes);
        return orgCodes;
    }

    /**
     * 查询所有下级机构信息
     *
     * @param orgCode
     * @param orgs
     * @return
     */
    public static List<String> getChildrenOrgs(String orgCode, List<String> orgs) {
        List<Map<String, Object>> children = commonMapper.findOrgListByOrgCode(orgCode);
        for (Map<String, Object> child : children) {
            String code = (String) child.get("ORG_CODE");
            orgs.add(code);
            getChildrenOrgs(code, orgs);
        }
        return orgs;
    }

    /**
     * 获取当前语言
     *
     * @return
     */
    public static String getLocale() {
        String locale = null;
        RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
        if (requestAttributes != null) {
            HttpServletRequest request = ((ServletRequestAttributes) requestAttributes).getRequest();
            locale = request.getParameter("locale");
            if (StringUtils.isBlank(locale)) {
                locale = (String) request.getAttribute("locale");
            }

            if (StringUtils.isBlank(locale)) {
                locale = request.getHeader("locale");
            }
            if (StringUtils.isBlank(locale)) {
                locale = request.getLocale().toString();
            }
        }
        if (StringUtils.isBlank(locale)) {
            locale = "zh_CN";
        }
        locale = locale.replace("-", "_");
        return locale;
    }

    /**
     * 获取客户端IP
     *
     * @return
     */
    public static String getRemoteIp() {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();

        return request.getRemoteHost();
    }

    /**
     * 获取文件路径
     *
     * @return
     */
    public static String getRootPath(String path) {
        if (path != null && path.startsWith("/")) {
            return path;
        } else {
            HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
            String root = request.getServletContext().getRealPath(path);
            if (StringUtils.isBlank(root)) {
                root = path;
            }
            return root;
        }
    }
}
