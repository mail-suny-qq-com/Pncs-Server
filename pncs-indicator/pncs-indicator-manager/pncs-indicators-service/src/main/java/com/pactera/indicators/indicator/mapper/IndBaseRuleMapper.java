package com.pactera.indicators.indicator.mapper;

import com.pactera.core.base.mapper.BaseMapper;
import com.pactera.indicators.indicator.model.IndBaseRule;
import org.apache.ibatis.annotations.Mapper;

/**
* 基础指标规则Mapper
* @author Suny
* @date 2020-04-01
*/
@Mapper
public interface IndBaseRuleMapper extends BaseMapper<IndBaseRule> {

    IndBaseRule getEntityByIeCode(String ieCode);
}