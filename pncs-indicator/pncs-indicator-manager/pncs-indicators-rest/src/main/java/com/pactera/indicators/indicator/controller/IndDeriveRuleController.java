package com.pactera.indicators.indicator.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.indicators.indicator.model.IndDeriveRule;
import com.pactera.indicators.indicator.service.IIndDeriveRuleService;
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
* 衍生指标规则表控制类
* @author Suny
* @date 2020-04-01
*/
@Api(tags = "衍生指标规则表管理")
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/indicators/indDeriveRules")
public class IndDeriveRuleController  extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(IndDeriveRuleController.class);
    @Resource
    private IIndDeriveRuleService indDeriveRuleService;

    /**
    * 新增保存衍生指标规则表
    */
    @Log("新增保存衍生指标规则表")
    @PreAuthorize("@el.check('indDeriveRule:add')")
    @ApiOperation(httpMethod = "POST", value = "衍生指标规则表信息新增保存", nickname = "save", notes = "")
    @PostMapping
    public Message<IndDeriveRule> save(@ApiParam(name = "indDeriveRule", value = "衍生指标规则表对象") @Validated @RequestBody IndDeriveRule indDeriveRule) {
        logger.debug("开始保存衍生指标规则表信息……");
        return indDeriveRuleService.save(indDeriveRule);
    }

    /**
    * 修改保存衍生指标规则表
    */
    @ApiOperation(httpMethod = "PUT", value = "衍生指标规则表信息修改保存", nickname = "update", notes = "")
    @PutMapping
    @Log("修改indicators")
    @PreAuthorize("@el.check('indDeriveRule:edit')")
    public Message<IndDeriveRule> update(@ApiParam(name = "indDeriveRule", value = "衍生指标规则表对象") @Validated @RequestBody IndDeriveRule indDeriveRule) {
        logger.debug("开始更新用户信息……");
        return indDeriveRuleService.update(indDeriveRule);
    }

    /**
    * 删除衍生指标规则表
    */
    @Log("删除衍生指标规则表")
    @PreAuthorize("@el.check('indDeriveRule:del')")
    @ApiOperation(httpMethod = "DELETE", value = "根据主键删除衍生指标规则表", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "衍生指标规则表ID")})
    @DeleteMapping("/{id}")
    public Message<Integer>  delete(@PathVariable("id") String id) {
        logger.debug("开始删除衍生指标规则表信息……");
        return indDeriveRuleService.deleteById(id);
    }

    /**
    * 批量删除衍生指标规则表
    */
    @Log("批量删除衍生指标规则表")
    @PreAuthorize("@el.check('indDeriveRule:del')")
    @DeleteMapping
    public Message<Integer>  delete(@NotEmpty(message = "${indDeriveRule.ids.notEmpty}") @RequestBody List<String> ids) {
        logger.debug("开始批量删除衍生指标规则表信息……");
        return indDeriveRuleService.deleteByIds(ids);
     }

    /**
    * 根据主键查找衍生指标规则表信息
    */
    @ApiOperation(httpMethod = "GET", value = "根据主键查询衍生指标规则表", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "衍生指标规则表ID")})
    @GetMapping("/{id}")
    public Message<IndDeriveRule> getById(@PathVariable("id") String id) {
        logger.debug("开始查询衍生指标规则表信息……");
        return indDeriveRuleService.getById(id);
    }

    /**
    * 查询衍生指标规则表信息列表(分页)
    */
    @ApiOperation(httpMethod = "GET", value = "查询衍生指标规则表列表可分页", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "query", dataType = "Integer", name = "size", value = "每页条数"),
    @ApiImplicitParam(paramType = "query", dataType = "Integer", name = "page", value = "页码"),
    @ApiImplicitParam(paramType = "query", dataType = "IndDeriveRule", name = "indDeriveRule", value = "查询条件")})
    @GetMapping
    public Message<IPage<IndDeriveRule>> queryPageList(@RequestParam(value = "size", required = false) Integer limit, @RequestParam(value = "page", required = false) Integer offset, @ModelAttribute IndDeriveRule indDeriveRule) {
        logger.debug("开始查询衍生指标规则表列表信息……");
        return indDeriveRuleService.findForPageList(limit, offset, indDeriveRule);
    }

    @ApiOperation("根据指标id查询衍生指标规则表信息")
    @RequestMapping(value = "/getIndDeriveRule",method = RequestMethod.POST)
    public Message<IndDeriveRule> getIndDeriveRule(@RequestBody() JSONObject jsonParam){
        logger.debug("开始根据指标id查询衍生指标规则表信息……");
        return indDeriveRuleService.getIndDeriveRule(jsonParam);
    }

    @ApiOperation("保存四则运算")
    @RequestMapping(value = "/saveArithmetic",method = RequestMethod.POST)
    public Message<IndDeriveRule> saveArithmetic(@RequestBody() JSONObject jsonParam){
        logger.debug("开始保存衍生指标规则表信息-四则运算……");
        return indDeriveRuleService.saveArithmetic(jsonParam);
    }
 }