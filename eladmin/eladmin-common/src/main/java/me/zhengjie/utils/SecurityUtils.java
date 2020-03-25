package me.zhengjie.utils;

import cn.hutool.json.JSONObject;
import me.zhengjie.exception.BadRequestException;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.List;

/**
 * 获取当前登录的用户
 * @author Zheng Jie
 * @date 2019-01-17
 */
public class SecurityUtils {

    public static UserDetails getUserDetails() {
        UserDetails userDetails;
        try {
            userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        } catch (Exception e) {
            throw new BadRequestException(HttpStatus.UNAUTHORIZED, "登录状态过期");
        }
        return userDetails;
    }

    /**
     * 获取系统用户名称
     * @return 系统用户名称
     */
    public static String getUsername(){
        Object obj = getUserDetails();
        return new JSONObject(obj).get("username", String.class);
    }

    /**
     * 获取系统用户中文名称
     * @return 系统用户中文名称
     */
    public static String getNickName(){
        Object obj = getUserDetails();
        JSONObject json = new JSONObject(obj);
        return json.get("nickName", String.class);
    }

    /**
     * 获取系统用户id
     * @return 系统用户id
     */
    public static String getUserId(){
        Object obj = getUserDetails();
        JSONObject json = new JSONObject(obj);
        return json.get("id", String.class);
    }

    /**
     * 获取系统用户归属机构ID
     * @return 用户归属机构ID
     */
    public static String getDeptId(){
        Object obj = getUserDetails();
        JSONObject json = new JSONObject(obj);
        return json.get("deptId", String.class);
    }

    /**
     * 获取用户角色ID集合
     * @return 用户角色ID集合
     */
    public static List<String> roleIds(){
        Object obj = getUserDetails();
        JSONObject json = new JSONObject(obj);
        return json.get("roleIds",List.class);
    }
}
