package com.pactera.smartbi.sync.service;

import com.pactera.core.base.service.IBaseService;
import com.pactera.core.message.Message;
import com.pactera.smartbi.sync.model.SmartbiUser;

/**
 * 指标分类服务接口
 *
 * @author Suny
 * @date 2020-04-01
 */
public interface ISmartbiUserService extends IBaseService<SmartbiUser> {
    Message sync(String username);
}