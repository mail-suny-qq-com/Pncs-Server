package com.pactera.indicators.indicator.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.indicators.indicator.mapper.IndDeriveRuleDependenceMapper;
import com.pactera.indicators.indicator.model.IndDeriveRuleDependence;
import com.pactera.indicators.indicator.service.IIndDeriveRuleDependenceService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
* 衍生指标规则依赖关系表服务实现
* @author Suny
* @date 2020-04-01
*/
@Service
public class IndDeriveRuleDependenceServiceImpl  extends BaseServiceImpl<IndDeriveRuleDependenceMapper, IndDeriveRuleDependence> implements IIndDeriveRuleDependenceService {
    private static final Logger logger = LoggerFactory.getLogger(IndDeriveRuleDependenceServiceImpl.class);

    @Resource
    private IndDeriveRuleDependenceMapper mapper;
}