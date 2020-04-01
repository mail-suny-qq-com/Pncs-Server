package com.pactera.indicators.indicator.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.indicators.indicator.model.IndIndicatorInfo;
import com.pactera.indicators.indicator.service.IIndIndicatorInfoService;
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
* 指标基本信息控制类
* @author Suny
* @date 2020-04-01
*/
@Api(tags = "指标基本信息管理")
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/indicators/indIndicatorInfos")
public class IndIndicatorInfoController  extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(IndIndicatorInfoController.class);
    @Resource
    private IIndIndicatorInfoService indIndicatorInfoService;

    /**
    * 新增保存指标基本信息
    */
    @Log("新增保存指标基本信息")
    @PreAuthorize("@el.check('indIndicatorInfo:add')")
    @ApiOperation(httpMethod = "POST", value = "指标基本信息信息新增保存", nickname = "save", notes = "")
    @PostMapping
    public Message<IndIndicatorInfo> save(@ApiParam(name = "indIndicatorInfo", value = "指标基本信息对象") @Validated @RequestBody IndIndicatorInfo indIndicatorInfo) {
        logger.debug("开始保存指标基本信息信息……");
        return indIndicatorInfoService.save(indIndicatorInfo);
    }

    /**
    * 修改保存指标基本信息
    */
    @ApiOperation(httpMethod = "PUT", value = "指标基本信息信息修改保存", nickname = "update", notes = "")
    @PutMapping
    @Log("修改indicators")
    @PreAuthorize("@el.check('indIndicatorInfo:edit')")
    public Message<IndIndicatorInfo> update(@ApiParam(name = "indIndicatorInfo", value = "指标基本信息对象") @Validated @RequestBody IndIndicatorInfo indIndicatorInfo) {
        logger.debug("开始更新用户信息……");
        return indIndicatorInfoService.update(indIndicatorInfo);
    }

    /**
    * 删除指标基本信息
    */
    @Log("删除指标基本信息")
    @PreAuthorize("@el.check('indIndicatorInfo:del')")
    @ApiOperation(httpMethod = "DELETE", value = "根据主键删除指标基本信息", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "指标基本信息ID")})
    @DeleteMapping("/{id}")
    public Message<Integer>  delete(@PathVariable("id") String id) {
        logger.debug("开始删除指标基本信息信息……");
        return indIndicatorInfoService.deleteById(id);
    }

    /**
    * 批量删除指标基本信息
    */
    @Log("批量删除指标基本信息")
    @PreAuthorize("@el.check('indIndicatorInfo:del')")
    @DeleteMapping
    public Message<Integer>  delete(@NotEmpty(message = "${indIndicatorInfo.ids.notEmpty}") @RequestBody List<String> ids) {
        logger.debug("开始批量删除指标基本信息信息……");
        return indIndicatorInfoService.deleteByIds(ids);
     }

    /**
    * 根据主键查找指标基本信息信息
    */
    @ApiOperation(httpMethod = "GET", value = "根据主键查询指标基本信息", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "指标基本信息ID")})
    @GetMapping("/{id}")
    public Message<IndIndicatorInfo> getById(@PathVariable("id") String id) {
        logger.debug("开始查询指标基本信息信息……");
        return indIndicatorInfoService.getById(id);
    }

    /**
    * 查询指标基本信息信息列表(分页)
    */
    @ApiOperation(httpMethod = "GET", value = "查询指标基本信息列表可分页", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "query", dataType = "Integer", name = "size", value = "每页条数"),
    @ApiImplicitParam(paramType = "query", dataType = "Integer", name = "page", value = "页码"),
    @ApiImplicitParam(paramType = "query", dataType = "IndIndicatorInfo", name = "indIndicatorInfo", value = "查询条件")})
    @GetMapping
    public Message<IPage<IndIndicatorInfo>> queryPageList(@RequestParam(value = "size", required = false) Integer limit, @RequestParam(value = "page", required = false) Integer offset, @ModelAttribute IndIndicatorInfo indIndicatorInfo) {
        logger.debug("开始查询指标基本信息列表信息……");
        return indIndicatorInfoService.findForPageList(limit, offset, indIndicatorInfo);
    }
 }