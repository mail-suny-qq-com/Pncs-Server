package com.pactera.indicators.result.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.indicators.result.mapper.IndIndicatorResultMapper;
import com.pactera.indicators.result.model.IndIndicatorResult;
import com.pactera.indicators.result.service.IIndIndicatorResultService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
* 指标计算结果表服务实现
* @author Suny
* @date 2020-04-01
*/
@Service
public class IndIndicatorResultServiceImpl  extends BaseServiceImpl<IndIndicatorResultMapper, IndIndicatorResult> implements IIndIndicatorResultService {
    private static final Logger logger = LoggerFactory.getLogger(IndIndicatorResultServiceImpl.class);

    @Resource
    private IndIndicatorResultMapper mapper;
}