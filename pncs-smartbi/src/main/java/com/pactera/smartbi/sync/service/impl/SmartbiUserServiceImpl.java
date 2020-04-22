package com.pactera.smartbi.sync.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.core.message.Message;
import com.pactera.smartbi.sync.mapper.SmartbiUserMapper;
import com.pactera.smartbi.sync.model.SmartbiUser;
import com.pactera.smartbi.sync.service.ISmartbiUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 用户信息同步接口
 *
 * @author Suny
 * @date 2020-04-01
 */
@Service("smartbiUserService")
public class SmartbiUserServiceImpl extends BaseServiceImpl<SmartbiUserMapper, SmartbiUser> implements ISmartbiUserService {
    private static final Logger logger = LoggerFactory.getLogger(SmartbiUserServiceImpl.class);
    @Resource
    private SmartbiUserMapper mapper;

    @Override
    public Message sync(String username) {
        logger.info("开始同步用户信息{}", username);
        return Message.success();//mapper.insert(user));
    }
}