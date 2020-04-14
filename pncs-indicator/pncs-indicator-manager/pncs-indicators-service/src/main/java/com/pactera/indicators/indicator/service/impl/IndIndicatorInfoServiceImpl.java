package com.pactera.indicators.indicator.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.core.message.Message;
import com.pactera.indicators.category.service.IIndCategoryService;
import com.pactera.indicators.indicator.mapper.IndIndicatorInfoMapper;
import com.pactera.indicators.indicator.model.IndIndicatorInfo;
import com.pactera.indicators.indicator.service.IIndIndicatorInfoService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 指标基本信息服务实现
 *
 * @author Suny
 * @date 2020-04-01
 */
@Service
public class IndIndicatorInfoServiceImpl extends BaseServiceImpl<IndIndicatorInfoMapper, IndIndicatorInfo> implements IIndIndicatorInfoService {
    private static final Logger logger = LoggerFactory.getLogger(IndIndicatorInfoServiceImpl.class);

    @Resource
    private IndIndicatorInfoMapper mapper;

    @Autowired
    IIndCategoryService indCategoryService;

    @Override
    public Message<IndIndicatorInfo> save(IndIndicatorInfo model) {
        String ieCode = mapper.maxCode(model.getIeType());
        if (StringUtils.isBlank(ieCode)) {
            switch (model.getIeType()) {
                case "0":
                    model.setIeCode("M0000001");
                    break;
                case "1":
                    model.setIeCode("B0000001");
                    break;
                case "2":
                    model.setIeCode("P0000001");
                    break;
                case "3":
                    model.setIeCode("Q0000001");
                    break;
            }
        } else {
            model.setIeCode(ieCode.substring(0, 1) + StringUtils.leftPad((Integer.valueOf(ieCode.substring(1)) + 1) + "", 7, '0'));
        }
        logger.debug("生成指标编号：{}", model.getIeCode());
        model.setStatus("0");
        return super.save(model);
    }
}