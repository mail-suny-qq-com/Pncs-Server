package me.zhengjie.modules.system.service.impl;

import me.zhengjie.modules.system.service.AuthMgtService;
import me.zhengjie.modules.system.service.dto.ObjectMenus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import java.util.List;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class AuthMgtServiceImpl implements AuthMgtService {
    //新增
    @Autowired
    private EntityManager entityManager;


    @Override
    public List<String> getAdminMenus(String type, String id) {
        String sql = " select menu_id from sys_object_menu where object_type=:type and object_id=:id ";
        return entityManager.createNativeQuery(sql).setParameter("type",type).setParameter("id",id).getResultList();

    }


    @Override
    @Transactional(rollbackFor = Exception.class)
    public void saveAdminMenus(ObjectMenus object) {
        String id = object.getObjectId();
        String type = object.getObjectType();
        entityManager.createNativeQuery("delete from sys_object_menu where object_type=:type and object_id=:id").setParameter("type",type).setParameter("id",id).executeUpdate();
        for (String menuId:object.getMenuIds()){
            entityManager.createNativeQuery("insert into sys_object_menu values(?,?,?)")
                    .setParameter(1,type).setParameter(2,id).setParameter(3,menuId).executeUpdate();
        }
    }
}
