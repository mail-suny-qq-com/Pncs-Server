package com.pactera.indicators.dimension.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.indicators.dimension.model.IndDimension;
import com.pactera.indicators.dimension.service.IIndDimensionService;
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
* 维度管理控制类
* @author Suny
* @date 2020-04-01
*/
@Api(tags = "维度管理管理")
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/indicators/indDimensions")
public class IndDimensionController  extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(IndDimensionController.class);
    @Resource
    private IIndDimensionService indDimensionService;

    /**
    * 新增保存维度管理
    */
    @Log("新增保存维度管理")
    @PreAuthorize("@el.check('indDimension:add')")
    @ApiOperation(httpMethod = "POST", value = "维度管理信息新增保存", nickname = "save", notes = "")
    @PostMapping
    public Message<IndDimension> save(@ApiParam(name = "indDimension", value = "维度管理对象") @Validated @RequestBody IndDimension indDimension) {
        logger.debug("开始保存维度管理信息……");
        return indDimensionService.save(indDimension);
    }

    /**
    * 修改保存维度管理
    */
    @ApiOperation(httpMethod = "PUT", value = "维度管理信息修改保存", nickname = "update", notes = "")
    @PutMapping
    @Log("修改indicators")
    @PreAuthorize("@el.check('indDimension:edit')")
    public Message<IndDimension> update(@ApiParam(name = "indDimension", value = "维度管理对象") @Validated @RequestBody IndDimension indDimension) {
        logger.debug("开始更新用户信息……");
        return indDimensionService.update(indDimension);
    }

    /**
    * 删除维度管理
    */
    @Log("删除维度管理")
    @PreAuthorize("@el.check('indDimension:del')")
    @ApiOperation(httpMethod = "DELETE", value = "根据主键删除维度管理", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "维度管理ID")})
    @DeleteMapping("/{id}")
    public Message<Integer>  delete(@PathVariable("id") String id) {
        logger.debug("开始删除维度管理信息……");
        return indDimensionService.deleteById(id);
    }

    /**
    * 批量删除维度管理
    */
    @Log("批量删除维度管理")
    @PreAuthorize("@el.check('indDimension:del')")
    @DeleteMapping
    public Message<Integer>  delete(@NotEmpty(message = "${indDimension.ids.notEmpty}") @RequestBody List<String> ids) {
        logger.debug("开始批量删除维度管理信息……");
        return indDimensionService.deleteByIds(ids);
     }

    /**
    * 根据主键查找维度管理信息
    */
    @ApiOperation(httpMethod = "GET", value = "根据主键查询维度管理", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "维度管理ID")})
    @GetMapping("/{id}")
    public Message<IndDimension> getById(@PathVariable("id") String id) {
        logger.debug("开始查询维度管理信息……");
        return indDimensionService.getById(id);
    }

    /**
    * 查询维度管理信息列表(分页)
    */
    @ApiOperation(httpMethod = "GET", value = "查询维度管理列表可分页", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "query", dataType = "Integer", name = "size", value = "每页条数"),
    @ApiImplicitParam(paramType = "query", dataType = "Integer", name = "page", value = "页码"),
    @ApiImplicitParam(paramType = "query", dataType = "IndDimension", name = "indDimension", value = "查询条件")})
    @GetMapping
    public Message<IPage<IndDimension>> queryPageList(@RequestParam(value = "size", required = false) Integer limit, @RequestParam(value = "page", required = false) Integer offset, @ModelAttribute IndDimension indDimension) {
        logger.debug("开始查询维度管理列表信息……");
        return indDimensionService.findForPageList(limit, offset, indDimension);
    }

    @ApiOperation("查询所有维度数据")
    @GetMapping(value = "/dim/all")
    public Message<List<IndDimension>> getDims(){
        return indDimensionService.findForList(new IndDimension());
    }
 }