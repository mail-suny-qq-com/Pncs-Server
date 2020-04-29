package com.pactera.smartbi.sync.service;

import com.pactera.core.base.service.IBaseService;
import com.pactera.core.message.Message;
import com.pactera.smartbi.sync.model.SmartbiGroup;

/**
 * 指标分类服务接口
 *
 * @author Suny
 * @date 2020-04-01
 */
public interface ISmartbiGroupService extends IBaseService<SmartbiGroup> {
    Message sync(String orgid);
}