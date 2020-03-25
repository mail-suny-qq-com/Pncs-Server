package me.zhengjie.modules.security.security.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

/**
 * @author Zheng Jie
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class OnlineUser {
    private String id;

    private String userName;

    private String nickName;

    private String phone;

    private String email;

    private String dept;

    private String deptId;

    private List<String> roleIds;

    private boolean isAdmin;

    private String browser;

    private String ip;

//    private String address;

    private String key;

    private Date loginTime;


}
