package com.pactera.indicators.indicator.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.indicators.indicator.model.IndBaseRuleFilter;
import com.pactera.indicators.indicator.service.IIndBaseRuleFilterService;
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
* 基础指标规则过滤条件控制类
* @author Suny
* @date 2020-04-01
*/
@Api(tags = "基础指标规则过滤条件管理")
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/indicators/indBaseRuleFilters")
public class IndBaseRuleFilterController  extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(IndBaseRuleFilterController.class);
    @Resource
    private IIndBaseRuleFilterService indBaseRuleFilterService;

    /**
    * 新增保存基础指标规则过滤条件
    */
    @Log("新增保存基础指标规则过滤条件")
    @PreAuthorize("@el.check('indBaseRuleFilter:add')")
    @ApiOperation(httpMethod = "POST", value = "基础指标规则过滤条件信息新增保存", nickname = "save", notes = "")
    @PostMapping
    public Message<IndBaseRuleFilter> save(@ApiParam(name = "indBaseRuleFilter", value = "基础指标规则过滤条件对象") @Validated @RequestBody IndBaseRuleFilter indBaseRuleFilter) {
        logger.debug("开始保存基础指标规则过滤条件信息……");
        return indBaseRuleFilterService.save(indBaseRuleFilter);
    }

    /**
    * 修改保存基础指标规则过滤条件
    */
    @ApiOperation(httpMethod = "PUT", value = "基础指标规则过滤条件信息修改保存", nickname = "update", notes = "")
    @PutMapping
    @Log("修改indicators")
    @PreAuthorize("@el.check('indBaseRuleFilter:edit')")
    public Message<IndBaseRuleFilter> update(@ApiParam(name = "indBaseRuleFilter", value = "基础指标规则过滤条件对象") @Validated @RequestBody IndBaseRuleFilter indBaseRuleFilter) {
        logger.debug("开始更新用户信息……");
        return indBaseRuleFilterService.update(indBaseRuleFilter);
    }

    /**
    * 删除基础指标规则过滤条件
    */
    @Log("删除基础指标规则过滤条件")
    @PreAuthorize("@el.check('indBaseRuleFilter:del')")
    @ApiOperation(httpMethod = "DELETE", value = "根据主键删除基础指标规则过滤条件", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "基础指标规则过滤条件ID")})
    @DeleteMapping("/{id}")
    public Message<Integer>  delete(@PathVariable("id") String id) {
        logger.debug("开始删除基础指标规则过滤条件信息……");
        return indBaseRuleFilterService.deleteById(id);
    }

    /**
    * 批量删除基础指标规则过滤条件
    */
    @Log("批量删除基础指标规则过滤条件")
    @PreAuthorize("@el.check('indBaseRuleFilter:del')")
    @DeleteMapping
    public Message<Integer>  delete(@NotEmpty(message = "${indBaseRuleFilter.ids.notEmpty}") @RequestBody List<String> ids) {
        logger.debug("开始批量删除基础指标规则过滤条件信息……");
        return indBaseRuleFilterService.deleteByIds(ids);
     }

    /**
    * 根据主键查找基础指标规则过滤条件信息
    */
    @ApiOperation(httpMethod = "GET", value = "根据主键查询基础指标规则过滤条件", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "基础指标规则过滤条件ID")})
    @GetMapping("/{id}")
    public Message<IndBaseRuleFilter> getById(@PathVariable("id") String id) {
        logger.debug("开始查询基础指标规则过滤条件信息……");
        return indBaseRuleFilterService.getById(id);
    }

    /**
    * 查询基础指标规则过滤条件信息列表(分页)
    */
    @ApiOperation(httpMethod = "GET", value = "查询基础指标规则过滤条件列表可分页", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "query", dataType = "Integer", name = "size", value = "每页条数"),
    @ApiImplicitParam(paramType = "query", dataType = "Integer", name = "page", value = "页码"),
    @ApiImplicitParam(paramType = "query", dataType = "IndBaseRuleFilter", name = "indBaseRuleFilter", value = "查询条件")})
    @GetMapping
    public Message<IPage<IndBaseRuleFilter>> queryPageList(@RequestParam(value = "size", required = false) Integer limit, @RequestParam(value = "page", required = false) Integer offset, @ModelAttribute IndBaseRuleFilter indBaseRuleFilter) {
        logger.debug("开始查询基础指标规则过滤条件列表信息……");
        return indBaseRuleFilterService.findForPageList(limit, offset, indBaseRuleFilter);
    }
 }