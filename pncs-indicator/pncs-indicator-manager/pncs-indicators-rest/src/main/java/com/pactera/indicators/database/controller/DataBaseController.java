package com.pactera.indicators.database.controller;


import cn.hutool.core.util.ObjectUtil;
import com.alibaba.fastjson.JSONObject;
import com.pactera.core.message.Message;
import com.pactera.core.util.SpringUtil;
import com.pactera.core.version.Version;
import com.pactera.indicators.datasource.model.IndDatasource;
import com.pactera.indicators.datasource.service.IIndDatasourceService;
import com.pactera.metadata.DataSource;
import com.pactera.metadata.Tables;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import me.zhengjie.domain.ColumnInfo;
import org.springframework.web.bind.annotation.*;
import schemacrawler.schema.Column;
import schemacrawler.schema.Table;
import me.zhengjie.domain.vo.TableInfo;

import javax.annotation.Resource;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public Message<List<TableInfo>> getTables(@RequestBody(required = false) JSONObject jsonParam){
        Map<String, String> connInfoMap = getConnInfo(jsonParam);
        //获取tableInfos信息
        Connection connection = null;
        List<TableInfo> tableInfos = new ArrayList<>();
        try {
            connection = DataSource.getConnection(connInfoMap.get("url"), connInfoMap.get("username"), connInfoMap.get("password"));
            List<Table> tables = (List<Table>)Tables.getTables(connection, DataSource.getSchema(connection,connInfoMap.get("schema")), "");
            for(int i=0;i<tables.size();i++){
                Table table=tables.get(i);
                tableInfos.add(new TableInfo(table.getName(),"","","", ObjectUtil.isNotEmpty(table.getRemarks()) ? table.getRemarks() : ""+i));
            }

        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return Message.success(tableInfos);
    }


    @ApiOperation("查询数据库列数据")
    @RequestMapping(value = "/columns/all",method = RequestMethod.POST)
    public Message<List<ColumnInfo>> getColumns(@RequestBody(required = false) JSONObject jsonParam){
        Map<String, String> connInfoMap = getConnInfo(jsonParam);
        //获取Columns信息
        Connection connection = null;
        List<ColumnInfo> columnInfos = new ArrayList<>();
        String tablename = jsonParam.get("tablename").toString();
        try {
            connection = DataSource.getConnection(connInfoMap.get("url"), connInfoMap.get("username"), connInfoMap.get("password"));
            List<Table> tables = (List<Table>)Tables.getTables(connection, DataSource.getSchema(connection,connInfoMap.get("schema")), tablename);
            List<Column> columns = tables.get(0).getColumns();
            for(int i=0;i<columns.size();i++){
                columnInfos.add(
                        new ColumnInfo(
                                tablename,
                                columns.get(i).getName(),
                                columns.get(i).isNullable(),
                                "",
                                ObjectUtil.isNotEmpty(columns.get(i).getRemarks()) ? columns.get(i).getRemarks() : ""+i,
                                "",
                                "")
                );
            }
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return Message.success(columnInfos);
    }

    /**
     * 获取url,username,password,schema;
     * @param jsonParam
     * @return
     */
    public Map<String,String> getConnInfo(JSONObject jsonParam){
        Map<String,String> map = new HashMap();
        String url,username,password,schema;
        if(jsonParam == null || jsonParam.size()==0
                ||(jsonParam.get("id")==null
                && (jsonParam.get("url")==null||jsonParam.get("username")==null||jsonParam.get("password")==null||jsonParam.get("schema")==null))
                ){
            //1.前台未传来数据源信息或数据源id，默认查询当前连接
            url = SpringUtil.getPropertiesValue("spring.datasource.dynamic.datasource.master.url", "");
            url = url.replaceAll("jdbc:log4jdbc","jdbc");
            username = SpringUtil.getPropertiesValue("spring.datasource.dynamic.datasource.master.username", "");
            password = SpringUtil.getPropertiesValue("spring.datasource.dynamic.datasource.master.password", "");
            schema = "pncs";
        }else{
            if(jsonParam.get("url")!=null||jsonParam.get("username")!=null||jsonParam.get("password")!=null||jsonParam.get("schema")!=null){
                //2.前台传来数据源详细信息
                url = jsonParam.get("url").toString();
                url = url.replaceAll("jdbc:log4jdbc","jdbc");
                username = jsonParam.get("username").toString();
                password = jsonParam.get("password").toString();
                schema = jsonParam.get("schema").toString();
            }else{
                //3.获取前台传递的数据源id,根据id去数据库查询数据源信息
                String id = jsonParam.get("id").toString();
                IndDatasource indDatasource = indDatasourceService.getEntityById(id);
                url = indDatasource.getDatasourceUrl();
                url = url.replaceAll("jdbc:log4jdbc","jdbc");
                username = indDatasource.getDatasourceUser();
                password = indDatasource.getDatasourcePassword();
                schema = indDatasource.getDatasourceSchema();
            }

        }
        map.put("url",url);
        map.put("username",username);
        map.put("password",password);
        map.put("schema",schema);
        return map;
    }
}
