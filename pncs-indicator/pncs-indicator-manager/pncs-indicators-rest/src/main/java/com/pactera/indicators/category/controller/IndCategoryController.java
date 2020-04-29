package com.pactera.indicators.category.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.indicators.category.model.IndCategory;
import com.pactera.indicators.category.service.IIndCategoryService;
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
 * 指标分类控制类
 *
 * @author Suny
 * @date 2020-04-01
 */
@Api(tags = "指标分类管理")
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/indicators/indCategorys")
public class IndCategoryController extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(IndCategoryController.class);
    @Resource
    private IIndCategoryService indCategoryService;

    /**
     * 新增保存指标分类
     */
    @Log("新增保存指标分类")
    @PreAuthorize("@el.check('indCategory:add')")
    @ApiOperation(httpMethod = "POST", value = "指标分类信息新增保存", nickname = "save", notes = "")
    @PostMapping
    public Message<IndCategory> save(@ApiParam(name = "indCategory", value = "指标分类对象") @Validated @RequestBody IndCategory indCategory) {
        logger.debug("开始保存指标分类信息……");
        return indCategoryService.save(indCategory);
    }

    /**
     * 修改保存指标分类
     */
    @ApiOperation(httpMethod = "PUT", value = "指标分类信息修改保存", nickname = "update", notes = "")
    @PutMapping
    @Log("修改indicators")
    @PreAuthorize("@el.check('indCategory:edit')")
    public Message<IndCategory> update(@ApiParam(name = "indCategory", value = "指标分类对象") @Validated @RequestBody IndCategory indCategory) {
        logger.debug("开始更新用户信息……");
        return indCategoryService.update(indCategory);
    }

    /**
     * 删除指标分类
     */
    @Log("删除指标分类")
    @PreAuthorize("@el.check('indCategory:del')")
    @ApiOperation(httpMethod = "DELETE", value = "根据主键删除指标分类", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "指标分类ID")})
    @DeleteMapping("/{id}")
    public Message<Integer> delete(@PathVariable("id") String id) {
        logger.debug("开始删除指标分类信息……");
        return indCategoryService.deleteById(id);
    }

    /**
     * 批量删除指标分类
     */
    @Log("批量删除指标分类")
    @PreAuthorize("@el.check('indCategory:del')")
    @DeleteMapping
    public Message<Integer> delete(@NotEmpty(message = "${indCategory.ids.notEmpty}") @RequestBody List<String> ids) {
        logger.debug("开始批量删除指标分类信息……");
        return indCategoryService.deleteByIds(ids);
    }

    /**
     * 根据主键查找指标分类信息
     */
    @ApiOperation(httpMethod = "GET", value = "根据主键查询指标分类", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "指标分类ID")})
    @GetMapping("/{id}")
    public Message<IndCategory> getById(@PathVariable("id") String id) {
        logger.debug("开始查询指标分类信息……");
        return indCategoryService.getById(id);
    }

    /**
     * 查询指标分类信息列表(分页)
     */
    @ApiOperation(httpMethod = "GET", value = "查询指标分类列表可分页", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "query", dataType = "Integer", name = "size", value = "每页条数"),
            @ApiImplicitParam(paramType = "query", dataType = "Integer", name = "page", value = "页码"),
            @ApiImplicitParam(paramType = "query", dataType = "IndCategory", name = "indCategory", value = "查询条件")})
    @GetMapping
    public Message<IPage<IndCategory>> queryPageList(@RequestParam(value = "size", required = false) Integer limit, @RequestParam(value = "page", required = false) Integer offset, @ModelAttribute IndCategory indCategory) {
        logger.debug("开始查询指标分类列表信息……");
        return indCategoryService.findForPageList(limit, offset, indCategory);
    }

    /**
     * 查询指标分类列表(树状结构)
     */
    @ApiOperation(httpMethod = "GET", value = "查询指标分类列表(树状结构)", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "type", value = "类型"),
            @ApiImplicitParam(paramType = "path", dataType = "String", name = "parentId", value = "父节点ID")})
    @GetMapping("/{type}/{parentId:0}")
    public Message<List<IndCategory>> treeList(@PathVariable(value = "type") String type, @PathVariable(value = "parentId") String parentId) {
        logger.debug("开始查询指标分类列表信息……");
        return Message.success(indCategoryService.tree(type, parentId));
    }

    /**
     * 查询指标分类列表(树状结构)，包含指标信息
     */
    @ApiOperation(httpMethod = "GET", value = "查询指标分类列表(树状结构)", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "type", value = "类型"),
            @ApiImplicitParam(paramType = "path", dataType = "String", name = "parentId", value = "父节点ID")})
    @GetMapping("/treeInfo/{type}/{parentId:0}")
    public Message<List<IndCategory>> treeInfoList(@PathVariable(value = "type") String type, @PathVariable(value = "parentId") String parentId) {
        logger.debug("开始查询指标分类列表+指标信息……");
        return Message.success(indCategoryService.treeInfo(type, parentId));
    }
}