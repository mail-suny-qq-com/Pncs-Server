package com.pactera.smartbi.sync.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.core.message.Message;
import com.pactera.core.wrapper.QueryWrapper;
import com.pactera.smartbi.sync.mapper.*;
import com.pactera.smartbi.sync.model.*;
import com.pactera.smartbi.sync.service.ISmartbiUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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
    private SmartbiGroupUserMapper smartbiGroupUserMapper;
    @Resource
    private SmartbiUserRoleMapper smartbiUserRoleMapper;
    @Resource
    SysUserMapper sysUserMapper;
    @Resource
    SysUserRoleMapper sysUserRoleMapper;

    @Override
    //@Transactional()
    public Message sync(String username) {
        logger.info("开始同步用户信息{}", username);
        SysUser u = new SysUser();
        u.setUsername(username);
        QueryWrapper<SysUser> wrapper = new QueryWrapper<SysUser>(u);
        SysUser user = sysUserMapper.selectOne(wrapper);
        SysUserRole ur = new SysUserRole();
        ur.setUserId(user.getId());
        QueryWrapper<SysUserRole> surWrapper = new QueryWrapper<>(ur);
        List<SysUserRole> surs = sysUserRoleMapper.selectList(surWrapper);
        SmartbiUser su = new SmartbiUser();
        su.setUsername(username);
        QueryWrapper<SmartbiUser> swrapper = new QueryWrapper<>(su);
        //swrapper.eq("username", username);
        SmartbiUser suser = smartbiUserMapper.selectOne(swrapper);
        if (suser == null) {
            suser = new SmartbiUser();
        }
        suser.setUsername(username);
        suser.setUserdesc(user.getNickName());
        suser.setUseralias(user.getNickName());
        suser.setIsenabled(user.getEnabled());
        suser.setUserpwd("096e79218965eb72c92a549dd5a330112");//默认密码111111
        if (suser.getId() == null) {
            smartbiUserMapper.insert(suser);
            //同步用户组
            SmartbiGroupUser sgu = new SmartbiGroupUser();
            sgu.setGroupid(user.getDeptId());
            sgu.setUserid(suser.getId());
            sgu.setIsdefault("1");
            smartbiGroupUserMapper.insert(sgu);

            //同步用户角色
            for (SysUserRole surole : surs) {
                SmartbiUserRole sur = new SmartbiUserRole();
                sur.setUserId(suser.getId());
                sur.setRoleId(surole.getRoleId());
                smartbiUserRoleMapper.insert(sur);
            }
            return Message.success();
        } else {
            smartbiUserMapper.updateById(suser);
            SmartbiGroupUser sgu = new SmartbiGroupUser();
            sgu.setUserid(suser.getId());
            QueryWrapper<SmartbiGroupUser> sguWrapper = new QueryWrapper<>(sgu);
            smartbiGroupUserMapper.delete(sguWrapper);
            sgu.setIsdefault("1");
            sgu.setGroupid(user.getDeptId());
            smartbiGroupUserMapper.insert(sgu);

            //同步用户角色
            QueryWrapper<SmartbiUserRole> squery = new QueryWrapper();
            squery.eq("userId", suser.getId());
            smartbiUserRoleMapper.delete(squery);
            for (SysUserRole surole : surs) {
                SmartbiUserRole sur = new SmartbiUserRole();
                sur.setUserId(suser.getId());
                sur.setRoleId(surole.getRoleId());
                smartbiUserRoleMapper.insert(sur);
            }
            return Message.success();
        }
    }
}