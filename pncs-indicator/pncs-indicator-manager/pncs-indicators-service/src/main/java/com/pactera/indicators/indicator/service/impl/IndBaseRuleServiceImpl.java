package com.pactera.indicators.indicator.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.indicators.indicator.mapper.IndBaseRuleMapper;
import com.pactera.indicators.indicator.model.IndBaseRule;
import com.pactera.indicators.indicator.service.IIndBaseRuleService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
* 基础指标规则服务实现
* @author Suny
* @date 2020-04-01
*/
@Service
public class IndBaseRuleServiceImpl  extends BaseServiceImpl<IndBaseRuleMapper, IndBaseRule> implements IIndBaseRuleService {
    private static final Logger logger = LoggerFactory.getLogger(IndBaseRuleServiceImpl.class);

    @Resource
    private IndBaseRuleMapper mapper;
}