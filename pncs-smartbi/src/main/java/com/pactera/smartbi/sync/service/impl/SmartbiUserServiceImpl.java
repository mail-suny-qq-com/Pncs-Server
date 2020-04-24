package com.pactera.smartbi.sync.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.core.message.Message;
import com.pactera.core.wrapper.QueryWrapper;
import com.pactera.smartbi.sync.mapper.SmartbiUserMapper;
import com.pactera.smartbi.sync.mapper.SysUserMapper;
import com.pactera.smartbi.sync.model.SmartbiUser;
import com.pactera.smartbi.sync.model.SysUser;
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
@Service
public class SmartbiUserServiceImpl extends BaseServiceImpl<SmartbiUserMapper, SmartbiUser> implements ISmartbiUserService {
    private static final Logger logger = LoggerFactory.getLogger(SmartbiUserServiceImpl.class);
    @Resource
    private SmartbiUserMapper smartbiUserMapper;
    @Resource
    SysUserMapper sysUserMapper;

    @Override
    public Message sync(String username) {
        logger.info("开始同步用户信息{}", username);
        QueryWrapper<SysUser> wrapper = new QueryWrapper<>();
        wrapper.eq("username", username);
        //wrapper.eq("enabled", "1");
        SysUser user = sysUserMapper.selectOne(wrapper);
        QueryWrapper<SmartbiUser> swrapper = new QueryWrapper<>();
        swrapper.eq("username", username);
        SmartbiUser suser = smartbiUserMapper.selectOne(swrapper);
        if (suser == null) {
            suser = new SmartbiUser();
        }
        suser.setUserdesc(user.getNickName());
        suser.setUseralias(user.getNickName());
        suser.setIsenabled(user.getEnabled());
        suser.setUserpwd(user.getPassword());
        if (suser.getId() == null) {
            return Message.success(smartbiUserMapper.insert(suser));
        } else {
            return Message.success(smartbiUserMapper.updateById(suser));
        }
    }
}