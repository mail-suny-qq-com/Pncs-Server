package com.pactera.indicators.dimension.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.indicators.dimension.model.IndDimRelation;
import com.pactera.indicators.dimension.service.IIndDimRelationService;
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
* 维度关系表控制类
* @author Suny
* @date 2020-04-01
*/
@Api(tags = "维度关系表管理")
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/indicators/indDimRelations")
public class IndDimRelationController  extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(IndDimRelationController.class);
    @Resource
    private IIndDimRelationService indDimRelationService;

    /**
    * 新增保存维度关系表
    */
    @Log("新增保存维度关系表")
    @PreAuthorize("@el.check('indDimRelation:add')")
    @ApiOperation(httpMethod = "POST", value = "维度关系表信息新增保存", nickname = "save", notes = "")
    @PostMapping
    public Message<IndDimRelation> save(@ApiParam(name = "indDimRelation", value = "维度关系表对象") @Validated @RequestBody IndDimRelation indDimRelation) {
        logger.debug("开始保存维度关系表信息……");
        return indDimRelationService.save(indDimRelation);
    }

    /**
    * 修改保存维度关系表
    */
    @ApiOperation(httpMethod = "PUT", value = "维度关系表信息修改保存", nickname = "update", notes = "")
    @PutMapping
    @Log("修改indicators")
    @PreAuthorize("@el.check('indDimRelation:edit')")
    public Message<IndDimRelation> update(@ApiParam(name = "indDimRelation", value = "维度关系表对象") @Validated @RequestBody IndDimRelation indDimRelation) {
        logger.debug("开始更新用户信息……");
        return indDimRelationService.update(indDimRelation);
    }

    /**
    * 删除维度关系表
    */
    @Log("删除维度关系表")
    @PreAuthorize("@el.check('indDimRelation:del')")
    @ApiOperation(httpMethod = "DELETE", value = "根据主键删除维度关系表", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "维度关系表ID")})
    @DeleteMapping("/{id}")
    public Message<Integer>  delete(@PathVariable("id") String id) {
        logger.debug("开始删除维度关系表信息……");
        return indDimRelationService.deleteById(id);
    }

    /**
    * 批量删除维度关系表
    */
    @Log("批量删除维度关系表")
    @PreAuthorize("@el.check('indDimRelation:del')")
    @DeleteMapping
    public Message<Integer>  delete(@NotEmpty(message = "${indDimRelation.ids.notEmpty}") @RequestBody List<String> ids) {
        logger.debug("开始批量删除维度关系表信息……");
        return indDimRelationService.deleteByIds(ids);
     }

    /**
    * 根据主键查找维度关系表信息
    */
    @ApiOperation(httpMethod = "GET", value = "根据主键查询维度关系表", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "维度关系表ID")})
    @GetMapping("/{id}")
    public Message<IndDimRelation> getById(@PathVariable("id") String id) {
        logger.debug("开始查询维度关系表信息……");
        return indDimRelationService.getById(id);
    }

    /**
    * 查询维度关系表信息列表(分页)
    */
    @ApiOperation(httpMethod = "GET", value = "查询维度关系表列表可分页", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "query", dataType = "Integer", name = "size", value = "每页条数"),
    @ApiImplicitParam(paramType = "query", dataType = "Integer", name = "page", value = "页码"),
    @ApiImplicitParam(paramType = "query", dataType = "IndDimRelation", name = "indDimRelation", value = "查询条件")})
    @GetMapping
    public Message<IPage<IndDimRelation>> queryPageList(@RequestParam(value = "size", required = false) Integer limit, @RequestParam(value = "page", required = false) Integer offset, @ModelAttribute IndDimRelation indDimRelation) {
        logger.debug("开始查询维度关系表列表信息……");
        return indDimRelationService.findForPageList(limit, offset, indDimRelation);
    }
 }