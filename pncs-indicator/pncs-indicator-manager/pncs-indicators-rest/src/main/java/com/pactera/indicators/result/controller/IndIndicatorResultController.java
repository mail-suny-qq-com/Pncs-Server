package com.pactera.indicators.result.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.indicators.result.model.IndIndicatorResult;
import com.pactera.indicators.result.service.IIndIndicatorResultService;
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
* 指标计算结果表控制类
* @author Suny
* @date 2020-04-01
*/
@Api(tags = "指标计算结果表管理")
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/indicators/indIndicatorResults")
public class IndIndicatorResultController  extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(IndIndicatorResultController.class);
    @Resource
    private IIndIndicatorResultService indIndicatorResultService;

    /**
    * 新增保存指标计算结果表
    */
    @Log("新增保存指标计算结果表")
    @PreAuthorize("@el.check('indIndicatorResult:add')")
    @ApiOperation(httpMethod = "POST", value = "指标计算结果表信息新增保存", nickname = "save", notes = "")
    @PostMapping
    public Message<IndIndicatorResult> save(@ApiParam(name = "indIndicatorResult", value = "指标计算结果表对象") @Validated @RequestBody IndIndicatorResult indIndicatorResult) {
        logger.debug("开始保存指标计算结果表信息……");
        return indIndicatorResultService.save(indIndicatorResult);
    }

    /**
    * 修改保存指标计算结果表
    */
    @ApiOperation(httpMethod = "PUT", value = "指标计算结果表信息修改保存", nickname = "update", notes = "")
    @PutMapping
    @Log("修改indicators")
    @PreAuthorize("@el.check('indIndicatorResult:edit')")
    public Message<IndIndicatorResult> update(@ApiParam(name = "indIndicatorResult", value = "指标计算结果表对象") @Validated @RequestBody IndIndicatorResult indIndicatorResult) {
        logger.debug("开始更新用户信息……");
        return indIndicatorResultService.update(indIndicatorResult);
    }

    /**
    * 删除指标计算结果表
    */
    @Log("删除指标计算结果表")
    @PreAuthorize("@el.check('indIndicatorResult:del')")
    @ApiOperation(httpMethod = "DELETE", value = "根据主键删除指标计算结果表", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "指标计算结果表ID")})
    @DeleteMapping("/{id}")
    public Message<Integer>  delete(@PathVariable("id") String id) {
        logger.debug("开始删除指标计算结果表信息……");
        return indIndicatorResultService.deleteById(id);
    }

    /**
    * 批量删除指标计算结果表
    */
    @Log("批量删除指标计算结果表")
    @PreAuthorize("@el.check('indIndicatorResult:del')")
    @DeleteMapping
    public Message<Integer>  delete(@NotEmpty(message = "${indIndicatorResult.ids.notEmpty}") @RequestBody List<String> ids) {
        logger.debug("开始批量删除指标计算结果表信息……");
        return indIndicatorResultService.deleteByIds(ids);
     }

    /**
    * 根据主键查找指标计算结果表信息
    */
    @ApiOperation(httpMethod = "GET", value = "根据主键查询指标计算结果表", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "指标计算结果表ID")})
    @GetMapping("/{id}")
    public Message<IndIndicatorResult> getById(@PathVariable("id") String id) {
        logger.debug("开始查询指标计算结果表信息……");
        return indIndicatorResultService.getById(id);
    }

    /**
    * 查询指标计算结果表信息列表(分页)
    */
    @ApiOperation(httpMethod = "GET", value = "查询指标计算结果表列表可分页", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "query", dataType = "Integer", name = "size", value = "每页条数"),
    @ApiImplicitParam(paramType = "query", dataType = "Integer", name = "page", value = "页码"),
    @ApiImplicitParam(paramType = "query", dataType = "IndIndicatorResult", name = "indIndicatorResult", value = "查询条件")})
    @GetMapping
    public Message<IPage<IndIndicatorResult>> queryPageList(@RequestParam(value = "size", required = false) Integer limit, @RequestParam(value = "page", required = false) Integer offset, @ModelAttribute IndIndicatorResult indIndicatorResult) {
        logger.debug("开始查询指标计算结果表列表信息……");
        return indIndicatorResultService.findForPageList(limit, offset, indIndicatorResult);
    }
 }