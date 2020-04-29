package com.pactera.indicators.dimension.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.core.message.Message;
import com.pactera.indicators.dimension.mapper.IndDimensionMapper;
import com.pactera.indicators.dimension.model.IndDimension;
import com.pactera.indicators.dimension.service.IIndDimensionService;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
* 维度管理服务实现
* @author Suny
* @date 2020-04-01
*/
@Service
public class IndDimensionServiceImpl  extends BaseServiceImpl<IndDimensionMapper, IndDimension> implements IIndDimensionService {
    private static final Logger logger = LoggerFactory.getLogger(IndDimensionServiceImpl.class);

    @Resource
    private IndDimensionMapper mapper;

    @Override
    public Message<IndDimension> save(IndDimension model) {
        String dimCode = mapper.maxDimCode();
        if (StringUtils.isBlank(dimCode)) {
            model.setDimCode("00000001");
        } else {
            model.setDimCode(dimCode.substring(0, 1) + StringUtils.leftPad((Integer.valueOf(dimCode.substring(1)) + 1) + "", 7, '0'));
        }
        logger.debug("生成维度编号：{}", model.getDimCode());
        return super.save(model);
    }
}