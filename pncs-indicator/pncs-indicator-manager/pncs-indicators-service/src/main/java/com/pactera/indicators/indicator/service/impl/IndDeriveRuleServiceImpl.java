package com.pactera.indicators.indicator.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.core.exception.CommonErrorCode;
import com.pactera.core.message.Message;
import com.pactera.core.wrapper.QueryWrapper;
import com.pactera.indicators.indicator.mapper.IndDeriveRuleMapper;
import com.pactera.indicators.indicator.model.IndDeriveRule;
import com.pactera.indicators.indicator.service.IIndDeriveRuleService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

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

    @Override
    public Message<IndDeriveRule> getIndDeriveRule(JSONObject jsonParam) {
        if(null!=jsonParam.get("ieCode")){
            QueryWrapper<IndDeriveRule> wrapper = new QueryWrapper();
            wrapper.eq("ieCode", jsonParam.get("ieCode").toString());
            IndDeriveRule indDeriveRule = mapper.selectOne(wrapper);
            if(indDeriveRule==null){
                return Message.failure(CommonErrorCode.NO_DATA_FOUND);
            }else{
                return Message.success(indDeriveRule);
            }
        }
        return Message.failure(CommonErrorCode.FAILURE);
    }

    @Override
    public Message<IndDeriveRule> saveArithmetic(JSONObject jsonParam) {
        if(null!=jsonParam.get("ieCode") && null!=jsonParam.get("ruleType") && null!=jsonParam.get("calcRule")){
            //通过ieCode查询数据库,存在则update，不存在insert
            IndDeriveRule indDeriveRule = null;
            QueryWrapper<IndDeriveRule> wrapper = new QueryWrapper();
            wrapper.eq("ieCode", jsonParam.get("ieCode").toString());
            List<IndDeriveRule> indDeriveRules = mapper.selectList(wrapper);
            if (indDeriveRules != null && !indDeriveRules.isEmpty()) {
                indDeriveRule = indDeriveRules.get(0);
                initIndDeriveRule(indDeriveRule,jsonParam);
                if (mapper.updateById(indDeriveRule) >= 1) {
                    return Message.success(indDeriveRule);
                } else {
                    return Message.failure(CommonErrorCode.SAVE_FAILURE);
                }
            }else{
                indDeriveRule = new IndDeriveRule();
                initIndDeriveRule(indDeriveRule,jsonParam);
                if (mapper.insert(indDeriveRule) >= 1) {
                    return Message.success(indDeriveRule);
                } else {
                    return Message.failure(CommonErrorCode.SAVE_FAILURE);
                }
            }

        }
        return Message.failure(CommonErrorCode.SAVE_FAILURE);
    }

    public void initIndDeriveRule(IndDeriveRule indDeriveRule,JSONObject jsonParam){
        indDeriveRule.setIeCode(jsonParam.get("ieCode").toString());
        indDeriveRule.setStatus("1");
        indDeriveRule.setRuleType(jsonParam.get("ruleType").toString());
        indDeriveRule.setCalcRule(jsonParam.get("calcRule").toString());
    }
}