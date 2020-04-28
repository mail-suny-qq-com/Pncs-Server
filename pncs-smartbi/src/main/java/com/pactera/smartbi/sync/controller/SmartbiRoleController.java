package com.pactera.smartbi.sync.controller;

import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.smartbi.sync.service.ISmartbiRoleService;
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
 * 角色信息同步
 *
 * @author Suny
 * @date 2020-04-01
 */
@Api(tags = "机构信息同步")
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/smartbi/role")
public class SmartbiRoleController extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(SmartbiRoleController.class);
    @Resource
    private ISmartbiRoleService roleService;

    /**
     * 角色信息同步
     */
    //@SLog("用户信息同步")
    @ApiOperation(httpMethod = "POST", value = "角色信息同步", nickname = "syncDept")
    @PostMapping("/sync/{roleId}")
    public Message<Integer> sync(@ApiParam(name = "roleId", type = "path", value = "机构编号") @Validated @PathVariable("roleId") String roleId) {
        logger.debug("开始同步角色信息……");
       return roleService.sync(roleId);
    }

}