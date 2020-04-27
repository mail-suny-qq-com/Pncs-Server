package com.pactera.smartbi.sync.controller;

import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.smartbi.sync.model.SmartbiUser;
import com.pactera.smartbi.sync.service.ISmartbiGroupService;
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
 * 机构信息同步
 *
 * @author Suny
 * @date 2020-04-01
 */
@Api(tags = "机构信息同步")
@RestController("smartbiDeptController")
@Version(1)
@RequestMapping("/{version:v\\d+}/smartbi/dept")
public class SmartbiGroupController extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(SmartbiGroupController.class);
    @Resource
    private ISmartbiGroupService groupService;

    /**
     * 机构信息同步
     */
    //@SLog("用户信息同步")
    @ApiOperation(httpMethod = "POST", value = "机构信息同步", nickname = "syncDept")
    @PostMapping("/sync/{deptId}")
    public Message<SmartbiUser> sync(@ApiParam(name = "deptId", type = "path", value = "机构编号") @Validated @PathVariable("deptId") String deptId) {
        logger.debug("开始同步机构信息……");
        return groupService.sync(deptId);
    }

}