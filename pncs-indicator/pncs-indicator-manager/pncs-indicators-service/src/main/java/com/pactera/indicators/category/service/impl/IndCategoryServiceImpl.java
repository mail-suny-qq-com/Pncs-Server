package com.pactera.indicators.category.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.core.message.Message;
import com.pactera.core.wrapper.QueryWrapper;
import com.pactera.indicators.category.mapper.IndCategoryMapper;
import com.pactera.indicators.category.model.IndCategory;
import com.pactera.indicators.category.service.IIndCategoryService;

import com.pactera.indicators.indicator.mapper.IndIndicatorInfoMapper;
import com.pactera.indicators.indicator.model.IndIndicatorInfo;
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
    private static Map<String, List<String>> CHILDREN_IDS = new HashMap<>();
    @Resource
    private IndCategoryMapper mapper;

    @Resource
    private IndIndicatorInfoMapper indIndicatorInfoMapper;

    @Override
    public Message<IndCategory> save(IndCategory model) {
        CHILDREN_IDS.clear();
        return super.save(model);
    }

    @Override
    public List<IndCategory> tree(String type, String parentId) {
        QueryWrapper<IndCategory> wrapper = new QueryWrapper();
        wrapper.eq("categoryType", type);
        wrapper.eq("parentId", parentId);
        List<IndCategory> root = mapper.selectList(wrapper);
        if (root != null && !root.isEmpty()) {
            for (IndCategory r : root) {
                r.setChildrenIds(childrenIds(type, r.getId()));
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
                c.setChildrenIds(childrenIds(c.getCategoryType(), c.getId()));
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
    private List<String> childrenIds(String type, String parentId) {
        if (CHILDREN_IDS.containsKey(type + parentId)) {
            return CHILDREN_IDS.get(type + parentId);
        }
        logger.debug("开始初始化分类ID列表……{}", parentId);
        List<String> ids = new ArrayList<>();
        ids.add(parentId);
        List<IndCategory> root = tree(type, parentId);
        if (root != null && !root.isEmpty()) {
            for (IndCategory r : root) {
                ids.add(r.getId());
                childrenIdss(ids, r);
            }
        }
        CHILDREN_IDS.put(type + parentId, ids);
        logger.debug("初始化分类ID列表完成。");
        return ids;
    }

    private void childrenIdss(List<String> ids, IndCategory parent) {
        if (parent.getChildren() != null && !parent.getChildren().isEmpty()) {
            for (IndCategory c : parent.getChildren()) {
                ids.add(c.getId());
                childrenIdss(ids, c);
            }
        }
    }


    /**
     * 查询指标分类列表(树状结构)，包含指标信息
     */
    @Override
    public List<IndCategory> treeInfo(String type, String parentId) {
        QueryWrapper<IndCategory> wrapper = new QueryWrapper();
        wrapper.eq("categoryType", type);
        wrapper.eq("parentId", parentId);
        List<IndCategory> root = mapper.selectList(wrapper);
        if (root != null && !root.isEmpty()) {
            for (IndCategory r : root) {
                r.setChildrenIds(childrenInfoIds(type, r.getId()));
                childrenInfo(r);
            }
        }
        return root;
    }
    private void childrenInfo(IndCategory parent) {
        QueryWrapper<IndCategory> wrapper = new QueryWrapper();
        wrapper.eq("categoryType", parent.getCategoryType());
        wrapper.eq("parentId", parent.getId());
        List<IndCategory> children = mapper.selectList(wrapper);
        if (children != null && !children.isEmpty()) {
            parent.setChildren(children);
            for (IndCategory c : children) {
                c.setChildrenIds(childrenInfoIds(c.getCategoryType(), c.getId()));
                childrenInfo(c);
            }
        }
        List<IndIndicatorInfo> indIndicatorInfos = getIndIndicatorInfos(parent.getId());
        List<IndCategory> list = new ArrayList<>();
        if(indIndicatorInfos != null && !indIndicatorInfos.isEmpty()){
            for(IndIndicatorInfo indIndicatorInfo : indIndicatorInfos){
                IndCategory indCategory = new IndCategory();
                indCategory.setId(indIndicatorInfo.getId());
                indCategory.setCategoryType("88");
                indCategory.setCategoryName(indIndicatorInfo.getIeName());
                list.add(indCategory);
            }
            if(parent.getChildren()==null){
                parent.setChildren(list);
            }else{
                parent.getChildren().addAll(list);
            }
        }
    }

    /**
     * 根据ID查询所有子ID列表
     *
     * @param parentId
     * @return
     */
    private List<String> childrenInfoIds(String type, String parentId) {
        if (CHILDREN_IDS.containsKey(type + parentId)) {
            return CHILDREN_IDS.get(type + parentId);
        }
        logger.debug("开始初始化分类ID列表……{}", parentId);
        List<String> ids = new ArrayList<>();
        ids.add(parentId);
        List<IndCategory> root = treeInfo(type, parentId);
        if (root != null && !root.isEmpty()) {
            for (IndCategory r : root) {
                ids.add(r.getId());
                childrenInfoIdss(ids, r);
            }
        }
        CHILDREN_IDS.put(type + parentId, ids);
        logger.debug("初始化分类ID列表完成。");
        return ids;
    }

    private void childrenInfoIdss(List<String> ids, IndCategory parent) {
        if (parent.getChildren() != null && !parent.getChildren().isEmpty()) {
            for (IndCategory c : parent.getChildren()) {
                ids.add(c.getId());
                childrenInfoIdss(ids, c);
            }
        }
    }

    private List<IndIndicatorInfo> getIndIndicatorInfos(String id){
        QueryWrapper<IndIndicatorInfo> wrapper = new QueryWrapper();
        wrapper.eq("categoryId", id);
        List<IndIndicatorInfo> indIndicatorInfos = indIndicatorInfoMapper.selectList(wrapper);
        return indIndicatorInfos;
    }
}