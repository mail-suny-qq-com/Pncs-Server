package com.pactera.indicators.indicator.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.indicators.indicator.model.IndDeriveRuleDependence;
import com.pactera.indicators.indicator.service.IIndDeriveRuleDependenceService;
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
* 衍生指标规则依赖关系表控制类
* @author Suny
* @date 2020-04-01
*/
@Api(tags = "衍生指标规则依赖关系表管理")
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/indicators/indDeriveRuleDependences")
public class IndDeriveRuleDependenceController  extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(IndDeriveRuleDependenceController.class);
    @Resource
    private IIndDeriveRuleDependenceService indDeriveRuleDependenceService;

    /**
    * 新增保存衍生指标规则依赖关系表
    */
    @Log("新增保存衍生指标规则依赖关系表")
    @PreAuthorize("@el.check('indDeriveRuleDependence:add')")
    @ApiOperation(httpMethod = "POST", value = "衍生指标规则依赖关系表信息新增保存", nickname = "save", notes = "")
    @PostMapping
    public Message<IndDeriveRuleDependence> save(@ApiParam(name = "indDeriveRuleDependence", value = "衍生指标规则依赖关系表对象") @Validated @RequestBody IndDeriveRuleDependence indDeriveRuleDependence) {
        logger.debug("开始保存衍生指标规则依赖关系表信息……");
        return indDeriveRuleDependenceService.save(indDeriveRuleDependence);
    }

    /**
    * 修改保存衍生指标规则依赖关系表
    */
    @ApiOperation(httpMethod = "PUT", value = "衍生指标规则依赖关系表信息修改保存", nickname = "update", notes = "")
    @PutMapping
    @Log("修改indicators")
    @PreAuthorize("@el.check('indDeriveRuleDependence:edit')")
    public Message<IndDeriveRuleDependence> update(@ApiParam(name = "indDeriveRuleDependence", value = "衍生指标规则依赖关系表对象") @Validated @RequestBody IndDeriveRuleDependence indDeriveRuleDependence) {
        logger.debug("开始更新用户信息……");
        return indDeriveRuleDependenceService.update(indDeriveRuleDependence);
    }

    /**
    * 删除衍生指标规则依赖关系表
    */
    @Log("删除衍生指标规则依赖关系表")
    @PreAuthorize("@el.check('indDeriveRuleDependence:del')")
    @ApiOperation(httpMethod = "DELETE", value = "根据主键删除衍生指标规则依赖关系表", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "衍生指标规则依赖关系表ID")})
    @DeleteMapping("/{id}")
    public Message<Integer>  delete(@PathVariable("id") String id) {
        logger.debug("开始删除衍生指标规则依赖关系表信息……");
        return indDeriveRuleDependenceService.deleteById(id);
    }

    /**
    * 批量删除衍生指标规则依赖关系表
    */
    @Log("批量删除衍生指标规则依赖关系表")
    @PreAuthorize("@el.check('indDeriveRuleDependence:del')")
    @DeleteMapping
    public Message<Integer>  delete(@NotEmpty(message = "${indDeriveRuleDependence.ids.notEmpty}") @RequestBody List<String> ids) {
        logger.debug("开始批量删除衍生指标规则依赖关系表信息……");
        return indDeriveRuleDependenceService.deleteByIds(ids);
     }

    /**
    * 根据主键查找衍生指标规则依赖关系表信息
    */
    @ApiOperation(httpMethod = "GET", value = "根据主键查询衍生指标规则依赖关系表", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "衍生指标规则依赖关系表ID")})
    @GetMapping("/{id}")
    public Message<IndDeriveRuleDependence> getById(@PathVariable("id") String id) {
        logger.debug("开始查询衍生指标规则依赖关系表信息……");
        return indDeriveRuleDependenceService.getById(id);
    }

    /**
    * 查询衍生指标规则依赖关系表信息列表(分页)
    */
    @ApiOperation(httpMethod = "GET", value = "查询衍生指标规则依赖关系表列表可分页", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "query", dataType = "Integer", name = "size", value = "每页条数"),
    @ApiImplicitParam(paramType = "query", dataType = "Integer", name = "page", value = "页码"),
    @ApiImplicitParam(paramType = "query", dataType = "IndDeriveRuleDependence", name = "indDeriveRuleDependence", value = "查询条件")})
    @GetMapping
    public Message<IPage<IndDeriveRuleDependence>> queryPageList(@RequestParam(value = "size", required = false) Integer limit, @RequestParam(value = "page", required = false) Integer offset, @ModelAttribute IndDeriveRuleDependence indDeriveRuleDependence) {
        logger.debug("开始查询衍生指标规则依赖关系表列表信息……");
        return indDeriveRuleDependenceService.findForPageList(limit, offset, indDeriveRuleDependence);
    }
 }