package com.pactera.indicators.database.controller;


import cn.hutool.core.util.ObjectUtil;
import com.alibaba.fastjson.JSONObject;
import com.pactera.core.message.Message;
import com.pactera.core.version.Version;
import com.pactera.indicators.datasource.model.IndDatasource;
import com.pactera.indicators.datasource.service.IIndDatasourceService;
import com.pactera.metadata.DataSource;
import com.pactera.metadata.Tables;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;
import schemacrawler.schema.Schema;
import schemacrawler.schema.Table;
import me.zhengjie.domain.vo.TableInfo;

import javax.annotation.Resource;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.List;

/**
 * lf 2020-4-24
 */
@RestController
@Version(1)
@RequestMapping("/{version:v\\d+}/database")
@Api(tags = "数据库信息")
public class DataBaseController {

    @Resource
    private IIndDatasourceService indDatasourceService;

    @ApiOperation("查询数据库数据")
    @RequestMapping(value = "/tables/all",method = RequestMethod.POST)
    public Message<List<TableInfo>> getTables(@RequestBody JSONObject jsonParam){
        String id = jsonParam.get("id").toString();

        IndDatasource indDatasource = indDatasourceService.getEntityById(id);

        List<Table> tableList = new ArrayList<>();

        String url = indDatasource.getDatasourceUrl();
        String username = indDatasource.getDatasourceUser();
        String password = indDatasource.getDatasourcePassword();
        String scheme = indDatasource.getDatasourceSchema();
        String driver = indDatasource.getDatasourceDriver();

        //报错
        //Connection connection = DataSource.getConnection(url, username, password);
        Connection connection = null;
        try {
            Class.forName(driver);
            connection = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
            return Message.failure(-1001,"获取连接异常");
        }

        Schema schema = DataSource.getSchema(connection,scheme);
        tableList = (List<Table>)new Tables().getTables(connection,schema,"");
        List<TableInfo> tableInfos = new ArrayList<>();
        for(int i=0;i<tableList.size();i++){
            Table table=tableList.get(i);
            tableInfos.add(new TableInfo(table.getName(),"","","", ObjectUtil.isNotEmpty(table.getRemarks()) ? table.getRemarks() : ""+i));
        }
        return Message.success(tableInfos);
    }

}
