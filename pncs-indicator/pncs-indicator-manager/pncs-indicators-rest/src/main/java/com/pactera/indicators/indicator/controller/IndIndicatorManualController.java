package com.pactera.indicators.indicator.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.indicators.indicator.model.IndIndicatorManual;
import com.pactera.indicators.indicator.service.IIndIndicatorManualService;
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
* 指标补录控制类
* @author Suny
* @date 2020-04-01
*/
@Api(tags = "指标补录管理")
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/indicators/indIndicatorManuals")
public class IndIndicatorManualController  extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(IndIndicatorManualController.class);
    @Resource
    private IIndIndicatorManualService indIndicatorManualService;

    /**
    * 新增保存指标补录
    */
    @Log("新增保存指标补录")
    @PreAuthorize("@el.check('indIndicatorManual:add')")
    @ApiOperation(httpMethod = "POST", value = "指标补录信息新增保存", nickname = "save", notes = "")
    @PostMapping
    public Message<IndIndicatorManual> save(@ApiParam(name = "indIndicatorManual", value = "指标补录对象") @Validated @RequestBody IndIndicatorManual indIndicatorManual) {
        logger.debug("开始保存指标补录信息……");
        return indIndicatorManualService.save(indIndicatorManual);
    }

    /**
    * 修改保存指标补录
    */
    @ApiOperation(httpMethod = "PUT", value = "指标补录信息修改保存", nickname = "update", notes = "")
    @PutMapping
    @Log("修改indicators")
    @PreAuthorize("@el.check('indIndicatorManual:edit')")
    public Message<IndIndicatorManual> update(@ApiParam(name = "indIndicatorManual", value = "指标补录对象") @Validated @RequestBody IndIndicatorManual indIndicatorManual) {
        logger.debug("开始更新用户信息……");
        return indIndicatorManualService.update(indIndicatorManual);
    }

    /**
    * 删除指标补录
    */
    @Log("删除指标补录")
    @PreAuthorize("@el.check('indIndicatorManual:del')")
    @ApiOperation(httpMethod = "DELETE", value = "根据主键删除指标补录", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "指标补录ID")})
    @DeleteMapping("/{id}")
    public Message<Integer>  delete(@PathVariable("id") String id) {
        logger.debug("开始删除指标补录信息……");
        return indIndicatorManualService.deleteById(id);
    }

    /**
    * 批量删除指标补录
    */
    @Log("批量删除指标补录")
    @PreAuthorize("@el.check('indIndicatorManual:del')")
    @DeleteMapping
    public Message<Integer>  delete(@NotEmpty(message = "${indIndicatorManual.ids.notEmpty}") @RequestBody List<String> ids) {
        logger.debug("开始批量删除指标补录信息……");
        return indIndicatorManualService.deleteByIds(ids);
     }

    /**
    * 根据主键查找指标补录信息
    */
    @ApiOperation(httpMethod = "GET", value = "根据主键查询指标补录", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "指标补录ID")})
    @GetMapping("/{id}")
    public Message<IndIndicatorManual> getById(@PathVariable("id") String id) {
        logger.debug("开始查询指标补录信息……");
        return indIndicatorManualService.getById(id);
    }

    /**
    * 查询指标补录信息列表(分页)
    */
    @ApiOperation(httpMethod = "GET", value = "查询指标补录列表可分页", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "query", dataType = "Integer", name = "size", value = "每页条数"),
    @ApiImplicitParam(paramType = "query", dataType = "Integer", name = "page", value = "页码"),
    @ApiImplicitParam(paramType = "query", dataType = "IndIndicatorManual", name = "indIndicatorManual", value = "查询条件")})
    @GetMapping
    public Message<IPage<IndIndicatorManual>> queryPageList(@RequestParam(value = "size", required = false) Integer limit, @RequestParam(value = "page", required = false) Integer offset, @ModelAttribute IndIndicatorManual indIndicatorManual) {
        logger.debug("开始查询指标补录列表信息……");
        return indIndicatorManualService.findForPageList(limit, offset, indIndicatorManual);
    }
 }