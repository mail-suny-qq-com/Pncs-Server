package com.pactera.indicators.indicator.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.mapper.BaseMapper;
import com.pactera.indicators.indicator.model.IndIndicatorInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * 指标基本信息Mapper
 *
 * @author Suny
 * @date 2020-04-01
 */
@Mapper
public interface IndIndicatorInfoMapper extends BaseMapper<IndIndicatorInfo> {
    String maxCode(@Param("ieType") String ieType);
    IPage<IndIndicatorInfo> findForListBean(@Param("page") IPage<IndIndicatorInfo> page, @Param("variable") IndIndicatorInfo indIndicatorInfo);
}