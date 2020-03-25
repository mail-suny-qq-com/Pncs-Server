package me.zhengjie.modules.system.service.dto;

import lombok.Data;

import java.io.Serializable;

@Data
public class ObjectMenus implements Serializable {

    private String menuType;

    private String objectType;

    private String objectId;

    private String[] menuIds;
}
