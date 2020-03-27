package ${package}.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.controller.BaseController;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import ${package}.model.${className};
import ${package}.service.I${className}Service;
import io.swagger.annotations.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.security.access.prepost.PreAuthorize;
import me.zhengjie.aop.log.Log;
import javax.validation.constraints.NotEmpty;
import java.util.List;

/**
* ${remark}控制类
* @author ${author}
* @date ${date}
*/
@Api(tags = "${remark}管理")
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/${apiAlias}/${changeClassName}s")
public class ${className}Controller  extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(${className}Controller.class);
    @Autowired
    private I${className}Service ${changeClassName}Service;

    /**
    * 新增保存${remark}
    */
    @Log("新增保存${remark}")
    @PreAuthorize("@el.check('${changeClassName}:add')")
    @ApiOperation(httpMethod = "POST", value = "${remark}信息新增保存", nickname = "save", notes = "", tags = {"save",})
    @PostMapping
    public Message<${className}> save(@ApiParam(name = "${changeClassName}", value = "${remark}对象") @Validated @RequestBody ${className} ${changeClassName}) {
        logger.debug("开始保存${remark}信息……");
        return ${changeClassName}Service.save(${changeClassName});
    }

    /**
    * 修改保存${remark}
    */
    @ApiOperation(httpMethod = "PUT", value = "${remark}信息修改保存", nickname = "update", notes = "", tags = {"update",})
    @PutMapping
    @Log("修改${apiAlias}")
    @PreAuthorize("@el.check('${changeClassName}:edit')")
    public Message<${className}> update(@ApiParam(name = "${changeClassName}", value = "${remark}对象") @Validated @RequestBody ${className} ${changeClassName}) {
        logger.debug("开始更新用户信息……");
        return ${changeClassName}Service.update(${changeClassName});
    }

    /**
    * 删除${remark}
    */
    @Log("删除${remark}")
    @PreAuthorize("@el.check('${changeClassName}:del')")
    @ApiOperation(httpMethod = "DELETE", value = "根据主键删除${remark}", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "${remark}ID")})
    @DeleteMapping("/{id}")
    public Message<Integer>  delete(@PathVariable("id") String id) {
        logger.debug("开始删除${remark}信息……");
        return ${changeClassName}Service.deleteById(id);
    }

    /**
    * 批量删除${remark}
    */
    @Log("批量删除${remark}")
    @PreAuthorize("@el.check('${changeClassName}:del')")
    @DeleteMapping
    public Message<Integer>  delete(@NotEmpty(message = "${r"$"}{${changeClassName}.ids.notEmpty}") @RequestBody List<String> ids) {
        logger.debug("开始批量删除${remark}信息……");
        return ${changeClassName}Service.deleteByIds(ids);
     }

    /**
    * 根据主键查找${remark}信息
    */
    @ApiOperation(httpMethod = "GET", value = "根据主键查询${remark}", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "path", dataType = "String", name = "id", value = "${remark}ID")})
    @GetMapping("/{userId}")
    public Message<${className}> getById(@PathVariable("userId") String id) {
        logger.debug("开始查询${remark}信息……");
        return ${changeClassName}Service.getById(id);
    }

    /**
    * 查询${remark}信息列表(分页)
    */
    @ApiOperation(httpMethod = "GET", value = "查询${remark}列表可分页", notes = "")
    @ApiImplicitParams({@ApiImplicitParam(paramType = "query", dataType = "Integer", name = "limit", value = "每页条数"),
    @ApiImplicitParam(paramType = "query", dataType = "Integer", name = "offset", value = "页码"),
    @ApiImplicitParam(paramType = "query", dataType = "${className}", name = "${changeClassName}", value = "查询条件")})
    @GetMapping
    public Message<IPage<${className}>> queryPageList(@RequestParam(value = "limit", required = false) Integer limit, @RequestParam(value = "offset", required = false) Integer offset, @ModelAttribute ${className} ${changeClassName}) {
        logger.debug("开始查询${remark}列表信息……");
        return ${changeClassName}Service.findForPageList(limit, offset, ${changeClassName});
    }
 }