package com.pactera.indicators.indicator.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.indicators.indicator.mapper.IndBaseRuleFilterMapper;
import com.pactera.indicators.indicator.model.IndBaseRuleFilter;
import com.pactera.indicators.indicator.service.IIndBaseRuleFilterService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
* 基础指标规则过滤条件服务实现
* @author Suny
* @date 2020-04-01
*/
@Service
public class IndBaseRuleFilterServiceImpl  extends BaseServiceImpl<IndBaseRuleFilterMapper, IndBaseRuleFilter> implements IIndBaseRuleFilterService {
    private static final Logger logger = LoggerFactory.getLogger(IndBaseRuleFilterServiceImpl.class);

    @Resource
    private IndBaseRuleFilterMapper mapper;
}