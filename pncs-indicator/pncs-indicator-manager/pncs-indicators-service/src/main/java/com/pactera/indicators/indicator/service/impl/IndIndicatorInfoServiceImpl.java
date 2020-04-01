package com.pactera.indicators.indicator.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.indicators.indicator.mapper.IndIndicatorInfoMapper;
import com.pactera.indicators.indicator.model.IndIndicatorInfo;
import com.pactera.indicators.indicator.service.IIndIndicatorInfoService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
* 指标基本信息服务实现
* @author Suny
* @date 2020-04-01
*/
@Service
public class IndIndicatorInfoServiceImpl  extends BaseServiceImpl<IndIndicatorInfoMapper, IndIndicatorInfo> implements IIndIndicatorInfoService {
    private static final Logger logger = LoggerFactory.getLogger(IndIndicatorInfoServiceImpl.class);

    @Resource
    private IndIndicatorInfoMapper mapper;
}