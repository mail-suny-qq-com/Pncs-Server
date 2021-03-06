package com.pactera.indicators.indicator.service;

import com.alibaba.fastjson.JSONObject;
import com.pactera.core.base.service.IBaseService;
import com.pactera.core.message.Message;
import com.pactera.indicators.indicator.model.IndDeriveRule;

/**
* 衍生指标规则表服务接口
* @author Suny
* @date 2020-04-01
*/
public interface IIndDeriveRuleService  extends IBaseService<IndDeriveRule>{
    Message<IndDeriveRule> getIndDeriveRule(JSONObject jsonParam);
    Message<IndDeriveRule> saveArithmetic(JSONObject jsonParam);
}