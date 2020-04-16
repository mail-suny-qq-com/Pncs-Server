package com.pactera.smartbi;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import smartbi.sdk.ClientConnector;
import smartbi.sdk.InvokeResult;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Zheng Jie
 * @date 2018-11-23
 * 授权、根据token获取用户详细信息
 */
@Slf4j
@RestController
@RequestMapping("/smartbi")
@Api(tags = "Smartbi：单点登录接口")
public class LoginController {
    @Value("${smartbi.url:http://localhost:18080/smartbi}")
    private String smartbiUrl;
    @Value("${smartbi.username:admin}")
    private String smartbiUsername;
    @Value("${smartbi.password:admin}")
    private String smartbiPassword;


    @ApiOperation("登录授权")
    @PostMapping(value = "/login")
    public ResponseEntity<Object> login(@Validated @RequestBody LoginUser user, HttpServletRequest request) {
        // 密码解密
        //RSA rsa = new RSA(privateKey, null);
        String username = user.getUsername();
        //String password = new String(rsa.decrypt(user.getPassword(), KeyType.PrivateKey));
        // String url = user.getSmartbiUrl();
        Map<String, Object> authInfo = new HashMap<String, Object>(2);
        /**
         * smartbi 单点登录集成
         *
         */
        // 这个插件的用途是使得在URL中传递密码只能使用一次。
        // 集成系统时，首先通过Smartbi的SDK获取用户的动态密码。（密码默认60秒内有效，可在系统选项——单点登录——单点登录超时设置（毫秒）修改密码有效时间）

        // 获取动态密码的示例：
        try {
            ClientConnector conn = new ClientConnector(smartbiUrl);
            boolean open = conn.open(smartbiUsername, smartbiPassword); // 必须以拥有系统管理员角色的用户登录，其他用户登录调用接口获取的token是null
            if (open) {
                InvokeResult result = conn.remoteInvoke("LoginTokenModule", "generateLoginToken", new Object[]{username}); // 用户名
                System.out.println(result.getResult());//result.getResult()就是demo用户的token
                authInfo.put("smartbiToken", result.getResult());
                authInfo.put("smartbiUrl", smartbiUrl);
                conn.close();
            } else {
                //admin用户登录失败
                System.out.println("登录失败");
            }
        } catch (Exception e) {

        }
        return ResponseEntity.ok(authInfo);
    }

    @ApiOperation("退出登录")
    @DeleteMapping(value = "/logout")
    public ResponseEntity<Object> logout(HttpServletRequest request) {
        //onlineUserService.logout(tokenProvider.getToken(request));
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
