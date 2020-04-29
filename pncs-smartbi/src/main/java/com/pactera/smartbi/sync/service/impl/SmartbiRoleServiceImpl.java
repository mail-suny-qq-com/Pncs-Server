package com.pactera.smartbi.sync.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.core.message.Message;
import com.pactera.core.wrapper.QueryWrapper;
import com.pactera.smartbi.sync.mapper.SmartbiRoleMapper;
import com.pactera.smartbi.sync.mapper.SysRoleMapper;
import com.pactera.smartbi.sync.model.SmartbiRole;
import com.pactera.smartbi.sync.model.SysRole;
import com.pactera.smartbi.sync.service.ISmartbiRoleService;
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
public class SmartbiRoleServiceImpl extends BaseServiceImpl<SmartbiRoleMapper, SmartbiRole> implements ISmartbiRoleService {
    private static final Logger logger = LoggerFactory.getLogger(SmartbiRoleServiceImpl.class);
    @Resource
    private SmartbiRoleMapper smartbiRoleMapper;
    @Resource
    SysRoleMapper sysRoleMapper;

    @Override
    //@Transactional
    public Message sync(String roleId) {
        logger.info("开始同步角色信息{}", roleId);
        SysRole d = new SysRole();
        d.setId(roleId);
        QueryWrapper<SysRole> wrapper = new QueryWrapper<>(d);
        SysRole role = sysRoleMapper.selectOne(wrapper);
        SmartbiRole sg = new SmartbiRole();

        sg.setId(role.getId());
        QueryWrapper<SmartbiRole> sWrapper = new QueryWrapper<>(sg);
        SmartbiRole sGroup = smartbiRoleMapper.selectOne(sWrapper);
        if (sGroup == null) {
            sGroup = new SmartbiRole();
        }
        sGroup.setId(role.getId());
        sGroup.setRolename(role.getName());
        sGroup.setRolealias(role.getName());
        sGroup.setRoledesc(role.getName());
        sGroup.setSysid("DEFAULT_SYS");
        if (sGroup.getId() == null) {
            sGroup.setId(role.getId());
            return Message.success(smartbiRoleMapper.insert(sGroup));
        } else {
            return Message.success(smartbiRoleMapper.updateById(sGroup));
        }
    }
}