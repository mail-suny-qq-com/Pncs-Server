package com.pactera.indicators.category.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.core.wrapper.QueryWrapper;
import com.pactera.indicators.category.mapper.IndCategoryMapper;
import com.pactera.indicators.category.model.IndCategory;
import com.pactera.indicators.category.service.IIndCategoryService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Locale;

/**
 * 指标分类服务实现
 *
 * @author Suny
 * @date 2020-04-01
 */
@Service
public class IndCategoryServiceImpl extends BaseServiceImpl<IndCategoryMapper, IndCategory> implements IIndCategoryService {
    private static final Logger logger = LoggerFactory.getLogger(IndCategoryServiceImpl.class);

    @Resource
    private IndCategoryMapper mapper;

    @Override
    public List<IndCategory> tree(String type, String parentId) {
        QueryWrapper<IndCategory> wrapper = new QueryWrapper();
        wrapper.eq("categoryType", type);
        wrapper.eq("parentId", parentId);
        List<IndCategory> root = mapper.selectList(wrapper);
        if (root != null && !root.isEmpty()) {
            for (IndCategory r : root) {
                children(r);
            }
        }
        return root;
    }

    private void children(IndCategory parent) {
        QueryWrapper<IndCategory> wrapper = new QueryWrapper();
        wrapper.eq("categoryType", parent.getCategoryType());
        wrapper.eq("parentId", parent.getId());
        List<IndCategory> children = mapper.selectList(wrapper);
        if (children != null && !children.isEmpty()) {
            parent.setChildren(children);
            for (IndCategory c : children) {
                children(c);
            }
        }
    }
}