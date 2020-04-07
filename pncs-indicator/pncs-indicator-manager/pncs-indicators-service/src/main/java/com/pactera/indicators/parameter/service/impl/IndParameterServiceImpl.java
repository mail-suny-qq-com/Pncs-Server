package com.pactera.indicators.parameter.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.core.message.Message;
import com.pactera.indicators.parameter.mapper.IndParameterMapper;
import com.pactera.indicators.parameter.model.IndParameter;
import com.pactera.indicators.parameter.service.IIndParameterService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
* 指标参数服务实现
* @author Suny
* @date 2020-04-01
*/
@Service
public class IndParameterServiceImpl extends BaseServiceImpl<IndParameterMapper, IndParameter> implements IIndParameterService {
    private static final Logger logger = LoggerFactory.getLogger(IndParameterServiceImpl.class);

    @Resource
    private IndParameterMapper mapper;

    @Override
    public Message<IndParameter> save(IndParameter model) {
        String parmCode = mapper.maxParmCode();
        if (StringUtils.isBlank(parmCode)) {
            model.setParmCode("M0000001");
        } else {
            model.setParmCode(parmCode.substring(0, 1) + StringUtils.leftPad((Integer.valueOf(parmCode.substring(1)) + 1) + "", 7, '0'));
        }
        logger.debug("生成参数编号：{}", model.getParmCode());
        return super.save(model);
    }
}