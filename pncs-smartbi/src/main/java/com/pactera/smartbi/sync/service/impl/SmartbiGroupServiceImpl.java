package com.pactera.smartbi.sync.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.core.message.Message;
import com.pactera.core.wrapper.QueryWrapper;
import com.pactera.smartbi.sync.mapper.SmartbiGroupMapper;
import com.pactera.smartbi.sync.mapper.SysDeptMapper;
import com.pactera.smartbi.sync.model.SmartbiGroup;
import com.pactera.smartbi.sync.model.SysDept;
import com.pactera.smartbi.sync.service.ISmartbiGroupService;
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
public class SmartbiGroupServiceImpl extends BaseServiceImpl<SmartbiGroupMapper, SmartbiGroup> implements ISmartbiGroupService {
    private static final Logger logger = LoggerFactory.getLogger(SmartbiGroupServiceImpl.class);
    @Resource
    private SmartbiGroupMapper smartbiGroupMapper;
    @Resource
    SysDeptMapper sysDeptMapper;

    @Override
    //@Transactional
    public Message sync(String deptId) {
        logger.info("开始同步机构信息{}", deptId);
        SysDept d = new SysDept();
        d.setId(deptId);
        QueryWrapper<SysDept> wrapper = new QueryWrapper<>(d);
        SysDept dept = sysDeptMapper.selectOne(wrapper);
        SmartbiGroup sg = new SmartbiGroup();

        sg.setId(dept.getId());
        QueryWrapper<SmartbiGroup> sWrapper = new QueryWrapper<>(sg);
        SmartbiGroup sGroup = smartbiGroupMapper.selectOne(sWrapper);
        if (sGroup == null) {
            sGroup = new SmartbiGroup();
        }
        sGroup.setOrgid(dept.getId());
        sGroup.setGroupalias(dept.getName());
        sGroup.setGroupdesc(dept.getName());
        sGroup.setGroupname(dept.getName());
        sGroup.setPgroupid(dept.getPid());
        if (sGroup.getId() == null) {
            sGroup.setId(dept.getId());
            return Message.success(smartbiGroupMapper.insert(sGroup));
        } else {
            return Message.success(smartbiGroupMapper.updateById(sGroup));
        }
    }
}