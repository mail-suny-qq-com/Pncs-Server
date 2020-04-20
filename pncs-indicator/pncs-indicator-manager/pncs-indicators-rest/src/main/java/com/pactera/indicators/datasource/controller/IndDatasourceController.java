package com.pactera.indicators.datasource.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.indicators.datasource.model.IndDatasource;
import com.pactera.indicators.datasource.service.IIndDatasourceService;
import io.swagger.annotations.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.annotation.Resource;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.security.access.prepost.PreAuthorize;
import me.zhengjie.aop.log.Log;
import javax.validation.constraints.NotEmpty;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
* 数据源控制类
* @author Suny
* @date 2020-04-01
*/
@Api(tags = "数据源管理")
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/indicators/indDatasources")
public class IndDatasourceController  extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(IndDatasourceController.class);
    @Resource
    private IIndDatasourceService indDatasourceService;

    /**
    * 新增保存数据源
    */
    @Log("新增保存数据源")
    @PreAuthorize("@el.check('indDatasource:add')")
    @ApiOperation(httpMethod = "POST", value = "数据源信息新增保存", nickname = "save", notes = "")
    @PostMapping
    public Message<IndDatasource> save(@ApiParam(name = "indDatasource", value = "数据源对象") @Validated @RequestBody IndDatasource indDatasource) {
        logger.debug("开始保存数据源信息……");
        return indDatasourceService.save(indDatasource);
    }

    /**
     * 测试数据源参数连通性
     */
    @Log("测试数据源参数连通性")
    @ApiOperation("测试数据源参数连通性")
    @PostMapping(value = "/test")
    public Message<IndDatasource> sqlParaTest(@RequestBody IndDatasource indDatasource) {
        logger.debug("开始测试数据源参数连通性……");
        //Message<IndDatasource> ms = indDatasourceService.sqlParaTest(indDatasource);
        return indDatasourceService.sqlParaTest(indDatasource);
    }

    /**
    * 修改保存数据源
    */
    @ApiOperation(httpMethod = "PUT", value = "数据源信息修改保存", nickname = "update", notes = "")
    @PutMapping
    @Log("修改indicators")
    @PreAuthorize("@el.check('indDatasource:edit')")
    public Message<IndDatasource> update(@ApiParam(name = "indDatasource", value = "数据源对象") @Validated @RequestBody IndDatasource indDatasource) {
        logger.debug("开始更新用户信息……");
        return indDatasourceService.update(indDatasource);
    }

    /**
    * 删除数据源
    */
    @Log("删除数据源")
    @PreAuthorize("@el.check('indDatasource:del')")
    @ApiOperation(httpMethod = "DELETE", value = "根据主键删除数据源", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "数据源ID")})
    @DeleteMapping("/{id}")
    public Message<Integer>  delete(@PathVariable("id") String id) {
        logger.debug("开始删除数据源信息……");
        return indDatasourceService.deleteById(id);
    }

    /**
    * 批量删除数据源
    */
    @Log("批量删除数据源")
    @PreAuthorize("@el.check('indDatasource:del')")
    @DeleteMapping
    public Message<Integer>  delete(@NotEmpty(message = "${indDatasource.ids.notEmpty}") @RequestBody List<String> ids) {
        logger.debug("开始批量删除数据源信息……");
        return indDatasourceService.deleteByIds(ids);
     }

    /**
    * 根据主键查找数据源信息
    */
    @ApiOperation(httpMethod = "GET", value = "根据主键查询数据源", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "数据源ID")})
    @GetMapping("/{id}")
    public Message<IndDatasource> getById(@PathVariable("id") String id) {
        logger.debug("开始查询数据源信息……");
        return indDatasourceService.getById(id);
    }

    /**
    * 查询数据源信息列表(分页)
    */
    @ApiOperation(httpMethod = "GET", value = "查询数据源列表可分页", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "query", dataType = "Integer", name = "size", value = "每页条数"),
    @ApiImplicitParam(paramType = "query", dataType = "Integer", name = "page", value = "页码"),
    @ApiImplicitParam(paramType = "query", dataType = "IndDatasource", name = "indDatasource", value = "查询条件")})
    @GetMapping
    public Message<IPage<IndDatasource>> queryPageList(@RequestParam(value = "size", required = false) Integer limit, @RequestParam(value = "page", required = false) Integer offset, @ModelAttribute IndDatasource indDatasource) {
        logger.debug("开始查询数据源列表信息……");
        return indDatasourceService.findForPageList(limit, offset, indDatasource);
    }
 }