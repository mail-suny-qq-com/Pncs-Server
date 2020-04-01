package com.pactera.indicators.datasource.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.indicators.datasource.mapper.IndDatasourceMapper;
import com.pactera.indicators.datasource.model.IndDatasource;
import com.pactera.indicators.datasource.service.IIndDatasourceService;

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
}