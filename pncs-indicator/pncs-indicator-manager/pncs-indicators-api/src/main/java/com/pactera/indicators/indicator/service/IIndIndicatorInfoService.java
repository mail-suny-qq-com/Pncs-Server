package com.pactera.indicators.indicator.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.service.IBaseService;
import com.pactera.core.message.Message;
import com.pactera.indicators.indicator.model.IndIndicatorInfo;

/**
* 指标基本信息服务接口
* @author Suny
* @date 2020-04-01
*/
public interface IIndIndicatorInfoService  extends IBaseService<IndIndicatorInfo>{
    Message<IPage<IndIndicatorInfo>> findForPageListBean(Integer limit, Integer offset, IndIndicatorInfo indIndicatorInfo);
}