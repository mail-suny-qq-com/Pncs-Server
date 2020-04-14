package com.pactera.indicators.datasource.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.indicators.datasource.mapper.IndDatasourceMapper;
import com.pactera.indicators.datasource.model.IndDatasource;
import com.pactera.indicators.datasource.service.IIndDatasourceService;
import java.sql.Connection;
import java.sql.DriverManager;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
* 数据源服务实现
* @author Suny
* @date 2020-04-01
*/
@Service
public class IndDatasourceServiceImpl  extends BaseServiceImpl<IndDatasourceMapper, IndDatasource> implements IIndDatasourceService {
    private static final Logger logger = LoggerFactory.getLogger(IndDatasourceServiceImpl.class);

    @Resource
    private IndDatasourceMapper mapper;

    @Override
    public String sqlParaTest(IndDatasource indDatasource) {
        String result = "F";
        String dbType = indDatasource.getDatasourceType();
        //创建MYSQL连接信息
        if("mysql".equals(dbType)){
            Connection conn=null;
            try {
                /*String driver="com.mysql.jdbc.Driver";
                String jdbcurl="jdbc:mysql://localhost:3306/scms?useUnicode=true&characterEncoding=UTF-8&useSSL=false&serverTimezone=Asia/Shanghai";
                String username="root";
                String password="root";*/
                String driver=indDatasource.getDatasourceDriver();
                String jdbcurl=indDatasource.getDatasourceUrl();
                String username=indDatasource.getDatasourceUser();
                String password=indDatasource.getDatasourcePassword();
                Class.forName(driver);
                conn = DriverManager.getConnection(jdbcurl, username, password);
                conn.setAutoCommit(false);
                result = "S";
            }catch(Exception e) {
                //连接失败
                result = "F";
                logger.error("MYSQL连接失败",e);
            }finally {
                try {
                    if(conn != null) {
                        conn.close();
                    }
                }catch (Exception ee){
                    logger.error("数据源关闭失败",ee);
                }
            }
            return result;
        }else if("oracle".equals(dbType)){
            Connection conn=null;
            try {
                /*String driver="oracle.jdbc.driver.OracleDriver";
                String jdbcurl="jdbc:oracle:thin:@localhost:1521:orcl";
                String username="test";
                String password="test";*/
                String driver=indDatasource.getDatasourceDriver();
                String jdbcurl=indDatasource.getDatasourceUrl();
                String username=indDatasource.getDatasourceUser();
                String password=indDatasource.getDatasourcePassword();
                Class.forName(driver).newInstance();
                conn = DriverManager.getConnection(jdbcurl, username, password);
                conn.setAutoCommit(false);
                result = "S";
            }catch(Exception e) {
                //连接失败
                result = "F";
                logger.error("ORACLE连接失败",e);
            }finally {
                try {
                    if(conn != null) {
                        conn.close();
                    }
                }catch (Exception ee){
                    logger.error("数据源关闭失败",ee);
                }
            }
            return result;
        }else{
            return result;
        }
    }
}