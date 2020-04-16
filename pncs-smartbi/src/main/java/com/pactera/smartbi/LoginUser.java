package com.pactera.smartbi;


import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import java.util.StringJoiner;

/**
 * @author Zheng Jie
 * @date 2018-11-30
 */
@Getter
@Setter
public class LoginUser {

    @NotBlank
    private String username;

    @NotBlank
    private String password;

    @NotBlank
    private String smartbiUrl;

    @Override
    public String toString() {
        return new StringJoiner(", ", LoginUser.class.getSimpleName() + "[", "]")
                .add("username='" + username + "'")
                .add("password='" + password + "'")
                .add("smartbiUrl='" + smartbiUrl + "'")
                .toString();
    }
}
