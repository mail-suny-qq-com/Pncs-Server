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
import java.util.*;

/**
 * 指标分类服务实现
 *
 * @author Suny
 * @date 2020-04-01
 */
@Service
public class IndCategoryServiceImpl extends BaseServiceImpl<IndCategoryMapper, IndCategory> implements IIndCategoryService {
    private static final Logger logger = LoggerFactory.getLogger(IndCategoryServiceImpl.class);
    private static Map<String, List<String>> CHILDRENIDS = new HashMap<>();
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

    /**
     * 根据ID查询所有子ID列表
     *
     * @param parentId
     * @return
     */
    @Override
    public List<String> childrenIds(String type, String parentId) {
        if (CHILDRENIDS.containsKey(type + parentId)) {
            return CHILDRENIDS.get(type + parentId);
        }
        logger.debug("开始初始化分类ID列表……{}", parentId);
        List<String> ids = new ArrayList<>();
        ids.add(parentId);
        List<IndCategory> root = tree(type, parentId);
        if (root != null && !root.isEmpty()) {
            for (IndCategory r : root) {
                ids.add(r.getId());
                childrenIds(ids, r);
            }
        }
        CHILDRENIDS.put(type + parentId, ids);
        logger.debug("初始化分类ID列表完成。");
        return ids;
    }

    private void childrenIds(List<String> ids, IndCategory parent) {
        if (parent.getChildren() != null && !parent.getChildren().isEmpty()) {
            for (IndCategory c : parent.getChildren()) {
                ids.add(c.getId());
                childrenIds(ids, c);
            }
        }
    }
}