package com.pactera.smartbi.sync.controller;

import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.smartbi.sync.model.SmartbiUser;
import com.pactera.smartbi.sync.service.ISmartbiUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 用户信息同步
 *
 * @author Suny
 * @date 2020-04-01
 */
@Api(tags = "用户信息同步")
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/smartbi/user")
public class SmartbiUserController extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(SmartbiUserController.class);
    @Resource
    private ISmartbiUserService userService;

    /**
     * 用户信息同步
     */
    //@SLog("用户信息同步")
    @ApiOperation(httpMethod = "POST", value = "用户信息同步", nickname = "syncUser")
    @PostMapping("/sync/{username}")
    public Message<SmartbiUser> sync(@ApiParam(name = "username", type = "path", value = "用户编号") @Validated @PathVariable("username") String username) {
        logger.debug("开始同步用户信息……");
        return userService.sync(username);
    }

}