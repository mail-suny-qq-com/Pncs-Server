package com.pactera.indicators.category.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.indicators.category.mapper.IndCategoryMapper;
import com.pactera.indicators.category.model.IndCategory;
import com.pactera.indicators.category.service.IIndCategoryService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
* 指标分类服务实现
* @author Suny
* @date 2020-04-01
*/
@Service
public class IndCategoryServiceImpl  extends BaseServiceImpl<IndCategoryMapper, IndCategory> implements IIndCategoryService {
    private static final Logger logger = LoggerFactory.getLogger(IndCategoryServiceImpl.class);

    @Resource
    private IndCategoryMapper mapper;
}