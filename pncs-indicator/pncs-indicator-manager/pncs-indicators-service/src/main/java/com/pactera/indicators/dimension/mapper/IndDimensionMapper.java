package com.pactera.indicators.dimension.mapper;

import com.pactera.core.base.mapper.BaseMapper;
import com.pactera.indicators.dimension.model.IndDimension;
import org.apache.ibatis.annotations.Mapper;

/**
* 维度管理Mapper
* @author Suny
* @date 2020-04-01
*/
@Mapper
public interface IndDimensionMapper extends BaseMapper<IndDimension> {
    String maxDimCode();
}