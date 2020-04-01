package com.pactera.indicators.indicator.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.indicators.indicator.model.IndBaseRule;
import com.pactera.indicators.indicator.service.IIndBaseRuleService;
import io.swagger.annotations.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.annotation.Resource;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.security.access.prepost.PreAuthorize;
import me.zhengjie.aop.log.Log;
import javax.validation.constraints.NotEmpty;
import java.util.List;

/**
* 基础指标规则控制类
* @author Suny
* @date 2020-04-01
*/
@Api(tags = "基础指标规则管理")
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/indicators/indBaseRules")
public class IndBaseRuleController  extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(IndBaseRuleController.class);
    @Resource
    private IIndBaseRuleService indBaseRuleService;

    /**
    * 新增保存基础指标规则
    */
    @Log("新增保存基础指标规则")
    @PreAuthorize("@el.check('indBaseRule:add')")
    @ApiOperation(httpMethod = "POST", value = "基础指标规则信息新增保存", nickname = "save", notes = "")
    @PostMapping
    public Message<IndBaseRule> save(@ApiParam(name = "indBaseRule", value = "基础指标规则对象") @Validated @RequestBody IndBaseRule indBaseRule) {
        logger.debug("开始保存基础指标规则信息……");
        return indBaseRuleService.save(indBaseRule);
    }

    /**
    * 修改保存基础指标规则
    */
    @ApiOperation(httpMethod = "PUT", value = "基础指标规则信息修改保存", nickname = "update", notes = "")
    @PutMapping
    @Log("修改indicators")
    @PreAuthorize("@el.check('indBaseRule:edit')")
    public Message<IndBaseRule> update(@ApiParam(name = "indBaseRule", value = "基础指标规则对象") @Validated @RequestBody IndBaseRule indBaseRule) {
        logger.debug("开始更新用户信息……");
        return indBaseRuleService.update(indBaseRule);
    }

    /**
    * 删除基础指标规则
    */
    @Log("删除基础指标规则")
    @PreAuthorize("@el.check('indBaseRule:del')")
    @ApiOperation(httpMethod = "DELETE", value = "根据主键删除基础指标规则", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "基础指标规则ID")})
    @DeleteMapping("/{id}")
    public Message<Integer>  delete(@PathVariable("id") String id) {
        logger.debug("开始删除基础指标规则信息……");
        return indBaseRuleService.deleteById(id);
    }

    /**
    * 批量删除基础指标规则
    */
    @Log("批量删除基础指标规则")
    @PreAuthorize("@el.check('indBaseRule:del')")
    @DeleteMapping
    public Message<Integer>  delete(@NotEmpty(message = "${indBaseRule.ids.notEmpty}") @RequestBody List<String> ids) {
        logger.debug("开始批量删除基础指标规则信息……");
        return indBaseRuleService.deleteByIds(ids);
     }

    /**
    * 根据主键查找基础指标规则信息
    */
    @ApiOperation(httpMethod = "GET", value = "根据主键查询基础指标规则", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "基础指标规则ID")})
    @GetMapping("/{id}")
    public Message<IndBaseRule> getById(@PathVariable("id") String id) {
        logger.debug("开始查询基础指标规则信息……");
        return indBaseRuleService.getById(id);
    }

    /**
    * 查询基础指标规则信息列表(分页)
    */
    @ApiOperation(httpMethod = "GET", value = "查询基础指标规则列表可分页", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "query", dataType = "Integer", name = "size", value = "每页条数"),
    @ApiImplicitParam(paramType = "query", dataType = "Integer", name = "page", value = "页码"),
    @ApiImplicitParam(paramType = "query", dataType = "IndBaseRule", name = "indBaseRule", value = "查询条件")})
    @GetMapping
    public Message<IPage<IndBaseRule>> queryPageList(@RequestParam(value = "size", required = false) Integer limit, @RequestParam(value = "page", required = false) Integer offset, @ModelAttribute IndBaseRule indBaseRule) {
        logger.debug("开始查询基础指标规则列表信息……");
        return indBaseRuleService.findForPageList(limit, offset, indBaseRule);
    }
 }