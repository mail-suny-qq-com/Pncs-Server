package com.pactera.smartbi.sync.mapper;

import com.pactera.core.base.mapper.BaseMapper;
import com.pactera.smartbi.sync.model.SysDept;
import com.pactera.smartbi.sync.model.SysUser;
import org.apache.ibatis.annotations.Mapper;

/**
* 用户信息同步Mapper
* @author Suny
* @date 2020-04-22
*/
@Mapper
public interface SysDeptMapper extends BaseMapper<SysDept> {

}