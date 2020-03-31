package com.pactera.indicators.parameter.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.indicators.parameter.model.IndParameter;
import com.pactera.indicators.parameter.service.IIndParameterService;
import io.swagger.annotations.*;
import me.zhengjie.aop.log.Log;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.constraints.NotEmpty;
import java.util.List;

/**
* 指标参数控制类
* @author Suny
* @date 2020-03-27
*/
@Api(tags = "指标参数管理")
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/indicators/indParameters")
public class IndParameterController extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(IndParameterController.class);
    @Resource
    private IIndParameterService indParameterService;

    /**
    * 新增保存指标参数
    */
    @Log("新增保存指标参数")
    @PreAuthorize("@el.check('indParameter:add')")
    @ApiOperation(httpMethod = "POST", value = "指标参数信息新增保存", nickname = "save", notes = "")
    @PostMapping
    public Message<IndParameter> save(@ApiParam(name = "indParameter", value = "指标参数对象") @Validated @RequestBody IndParameter indParameter) {
        logger.debug("开始保存指标参数信息……");
        return indParameterService.save(indParameter);
    }

    /**
    * 修改保存指标参数
    */
    @ApiOperation(httpMethod = "PUT", value = "指标参数信息修改保存", nickname = "update", notes = "")
    @PutMapping
    @Log("修改indicators")
    @PreAuthorize("@el.check('indParameter:edit')")
    public Message<IndParameter> update(@ApiParam(name = "indParameter", value = "指标参数对象") @Validated @RequestBody IndParameter indParameter) {
        logger.debug("开始更新用户信息……");
        return indParameterService.update(indParameter);
    }

    /**
    * 删除指标参数
    */
    @Log("删除指标参数")
    @PreAuthorize("@el.check('indParameter:del')")
    @ApiOperation(httpMethod = "DELETE", value = "根据主键删除指标参数", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "指标参数ID")})
    @DeleteMapping("/{id}")
    public Message<Integer>  delete(@PathVariable("id") String id) {
        logger.debug("开始删除指标参数信息……");
        return indParameterService.deleteById(id);
    }

    /**
    * 批量删除指标参数
    */
    @Log("批量删除指标参数")
    @PreAuthorize("@el.check('indParameter:del')")
    @DeleteMapping
    public Message<Integer>  delete(@NotEmpty(message = "${indParameter.ids.notEmpty}") @RequestBody List<String> ids) {
        logger.debug("开始批量删除指标参数信息……");
        return indParameterService.deleteByIds(ids);
     }

    /**
    * 根据主键查找指标参数信息
    */
    @ApiOperation(httpMethod = "GET", value = "根据主键查询指标参数", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "指标参数ID")})
    @GetMapping("/{id}")
    public Message<IndParameter> getById(@PathVariable("id") String id) {
        logger.debug("开始查询指标参数信息……");
        return indParameterService.getById(id);
    }

    /**
    * 查询指标参数信息列表(分页)
    */
    @ApiOperation(httpMethod = "GET", value = "查询指标参数列表可分页", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "query", dataType = "Integer", name = "size", value = "每页条数"),
    @ApiImplicitParam(paramType = "query", dataType = "Integer", name = "page", value = "页码"),
    @ApiImplicitParam(paramType = "query", dataType = "IndParameter", name = "indParameter", value = "查询条件")})
    @GetMapping
    public Message<IPage<IndParameter>> queryPageList(@RequestParam(value = "size", required = false) Integer limit, @RequestParam(value = "page", required = false) Integer offset, @ModelAttribute IndParameter indParameter) {
        logger.debug("开始查询指标参数列表信息……");
        return indParameterService.findForPageList(limit, offset, indParameter);
    }
 }