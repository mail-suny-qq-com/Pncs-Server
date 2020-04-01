package com.pactera.indicators.indicator.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.indicators.indicator.mapper.IndDeriveRuleMapper;
import com.pactera.indicators.indicator.model.IndDeriveRule;
import com.pactera.indicators.indicator.service.IIndDeriveRuleService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
* 衍生指标规则表服务实现
* @author Suny
* @date 2020-04-01
*/
@Service
public class IndDeriveRuleServiceImpl  extends BaseServiceImpl<IndDeriveRuleMapper, IndDeriveRule> implements IIndDeriveRuleService {
    private static final Logger logger = LoggerFactory.getLogger(IndDeriveRuleServiceImpl.class);

    @Resource
    private IndDeriveRuleMapper mapper;
}