package me.zhengjie.modules.system.service.dto;

import lombok.Data;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

/**
 * @author Zheng Jie
 * @date 2018-12-17
 */
@Data
public class MenuDto implements Serializable {

    private String id;

    private Integer type;

    private String permission;

    private String name;

    private Long sort;

    private String path;

    private String component;

    private String pid;

    private Boolean iFrame;

    private Boolean cache;

    private Boolean hidden;

    private String componentName;

    private String icon;

    private List<MenuDto> children;

    private Timestamp createTime;
}
