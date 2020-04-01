package com.pactera.indicators.indicator.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.indicators.indicator.mapper.IndIndicatorManualMapper;
import com.pactera.indicators.indicator.model.IndIndicatorManual;
import com.pactera.indicators.indicator.service.IIndIndicatorManualService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
* 指标补录服务实现
* @author Suny
* @date 2020-04-01
*/
@Service
public class IndIndicatorManualServiceImpl  extends BaseServiceImpl<IndIndicatorManualMapper, IndIndicatorManual> implements IIndIndicatorManualService {
    private static final Logger logger = LoggerFactory.getLogger(IndIndicatorManualServiceImpl.class);

    @Resource
    private IndIndicatorManualMapper mapper;
}