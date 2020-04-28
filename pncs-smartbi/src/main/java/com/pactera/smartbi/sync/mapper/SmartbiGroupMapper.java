package com.pactera.smartbi.sync.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.pactera.core.base.mapper.BaseMapper;
import com.pactera.smartbi.sync.model.SmartbiGroup;
import org.apache.ibatis.annotations.Mapper;

/**
*  组信息同步Mapper
* @author Suny
* @date 2020-04-22
*/
@Mapper
@DS("smartbi")
public interface SmartbiGroupMapper extends BaseMapper<SmartbiGroup> {
}