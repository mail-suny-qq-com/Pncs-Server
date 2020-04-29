package com.pactera.indicators.category.service;

import com.pactera.core.base.service.IBaseService;
import com.pactera.indicators.category.model.IndCategory;

import java.util.List;
import java.util.Locale;

/**
 * 指标分类服务接口
 *
 * @author Suny
 * @date 2020-04-01
 */
public interface IIndCategoryService extends IBaseService<IndCategory> {
    List<IndCategory> tree(String type, String parentId);
    List<IndCategory> treeInfo(String type, String parentId);
}