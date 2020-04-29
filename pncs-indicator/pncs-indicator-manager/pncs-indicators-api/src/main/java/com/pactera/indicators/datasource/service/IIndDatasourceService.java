package com.pactera.indicators.datasource.service;

import com.pactera.core.base.service.IBaseService;
import com.pactera.core.message.Message;
import com.pactera.indicators.datasource.model.IndDatasource;

/**
* 数据源服务接口
* @author Suny
* @date 2020-04-01
*/
public interface IIndDatasourceService  extends IBaseService<IndDatasource>{
    /**
     * 数据库参数连接测试
     * @return /
     */
    Message<IndDatasource> sqlParaTest(IndDatasource indDatasource);
}