package com.pactera.smartbi.sync.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.pactera.core.base.mapper.BaseMapper;
import com.pactera.smartbi.sync.model.SmartbiRole;
import org.apache.ibatis.annotations.Mapper;

/**
 * 指标分类Mapper
 *
 * @author Suny
 * @date 2020-04-01
 */
@Mapper
@DS("smartbi")
public interface SmartbiRoleMapper extends BaseMapper<SmartbiRole> {
}