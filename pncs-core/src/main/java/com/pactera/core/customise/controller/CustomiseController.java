package com.pactera.core.customise.controller;

import com.pactera.core.base.controller.BaseController;
import com.pactera.core.customise.mapper.CustomiseMapper;
import com.pactera.core.customise.model.Customise;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.core.wrapper.QueryWrapper;
import io.swagger.annotations.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;


/**
 * 类名称： 自定义查询
 *
 * @author Suny
 * @date 2017年10月23日
 */
@Api(tags = "公共-自定义查询条件接口")
//@ApiSort(1)
@RestController
@Version(1)
@RequestMapping("/{version}/core/customise")
public class CustomiseController extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(CustomiseController.class);
    @Resource
    CustomiseMapper customiseMapper;

    /**
     * 自定义查询条件-添加
     *
     * @param customise 待保存的查询实体
     * @return 返回保存后的查询对象
     */
    @ApiOperation(value = "自定义查询保存")
    @ApiImplicitParam(name = "customise", value = "查询对象", required = true, dataType = "Customise", paramType = "body")
    @PostMapping
    public Message<Customise> saveCustomise(@RequestBody Customise customise) {
        logger.info("保存自定义查询开始...");
        customise.setUserCode("admin");
        customise.setCrtDate(new Date());
        customiseMapper.insert(customise);
        return Message.success(customise);
    }

    /**
     * 自定义查询条件-删除
     *
     * @param pageId        页面ID
     * @param customiseName 查询名称
     * @return 删除的记录数
     */
    @ApiOperation(httpMethod = "DELETE", value = "根据页面ID及页面名称删除自定义查询")
    @ApiImplicitParams({@ApiImplicitParam(name = "pageId", value = "页面ID", required = true, dataType = "String", paramType = "path"),
            @ApiImplicitParam(name = "customiseName", value = "查询名称", required = true, dataType = "String", paramType = "body")})
    @DeleteMapping("/{pageId}/{customiseName}")
    public Message<Integer> deleteCustomiseByName(@PathVariable("pageId") String pageId, @PathVariable("customiseName") String customiseName) {
        logger.info("删除自定义查询开始...");
        QueryWrapper<Customise> customise = new QueryWrapper<>();
        customise.eq("pageId", pageId);
        customise.eq("customiseName", customiseName);
        int cnt = customiseMapper.delete(customise);
        return Message.success(cnt);
    }

    /**
     * 自定义查询条件-删除
     *
     * @param customiseId 查询ID
     * @return 删除的记录数
     */
    @ApiOperation(httpMethod = "DELETE", value = "根据查询ID删除自定义查询")
    @ApiImplicitParams({@ApiImplicitParam(name = "customiseId", value = "查询ID", required = true, dataType = "String", paramType = "path")})
    @DeleteMapping("/{customiseId}")
    public Message<Integer> deleteCustomise(@PathVariable("customiseId") String customiseId) {
        logger.info("删除自定义查询开始...");
        return Message.success(customiseMapper.deleteById(customiseId));
    }

    /**
     * 自定义查询-查询方法
     *
     * @param pageId 页面ID
     * @return 返回查询
     */
    @ApiOperation(httpMethod = "GET", value = "根据页面ID查询自定义查询")
    @ApiImplicitParam(paramType = "path", name = "pageId", value = "页面ID", dataType = "String", required = true)
    @GetMapping("/{pageId}")
    public Message<List<Customise>> getCustomiseByPageId(@PathVariable("pageId") String pageId) {
        logger.debug("查询自定义查询开始...");
        QueryWrapper<Customise> customise = new QueryWrapper<>();
        customise.eq("pageId", pageId);
        customise.eq("userCode", "admin");
        List<Customise> customises = customiseMapper.selectList(customise);
        return Message.success(customises);
    }
}