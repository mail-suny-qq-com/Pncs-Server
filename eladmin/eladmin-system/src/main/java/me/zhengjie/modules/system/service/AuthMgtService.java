package me.zhengjie.modules.system.service;


import me.zhengjie.modules.system.service.dto.ObjectMenus;

import java.util.List;

public interface AuthMgtService {

    /**
     * 查询admin菜单
     * @param type
     * @param id
     * @return
     */
    List<String> getAdminMenus(String type,String id);


    /**
     * 保存admin菜单
     * @param object
     */
    void saveAdminMenus(ObjectMenus object);

}
