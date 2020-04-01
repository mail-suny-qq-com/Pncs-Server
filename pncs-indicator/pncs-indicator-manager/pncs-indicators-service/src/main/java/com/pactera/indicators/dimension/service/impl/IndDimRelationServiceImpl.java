package com.pactera.indicators.dimension.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.indicators.dimension.mapper.IndDimRelationMapper;
import com.pactera.indicators.dimension.model.IndDimRelation;
import com.pactera.indicators.dimension.service.IIndDimRelationService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
* 维度关系表服务实现
* @author Suny
* @date 2020-04-01
*/
@Service
public class IndDimRelationServiceImpl  extends BaseServiceImpl<IndDimRelationMapper, IndDimRelation> implements IIndDimRelationService {
    private static final Logger logger = LoggerFactory.getLogger(IndDimRelationServiceImpl.class);

    @Resource
    private IndDimRelationMapper mapper;
}