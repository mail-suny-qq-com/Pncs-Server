package me.zhengjie.modules.system.domain;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Objects;

/**
 * @author Zheng Jie
 * @date 2018-12-17
 */
@Entity
@Getter
@Setter
@Table(name = "sys_menu")
@GenericGenerator(name = "jpa-uuid", strategy = "uuid")
public class Menu implements Serializable {

    @Id
    @GeneratedValue(generator = "jpa-uuid")
    @NotNull(groups = {Update.class})
    private String id;

    @NotBlank
    private String name;

    @Column(unique = true)
    private Long sort = 999L;

    @Column(name = "path")
    private String path;

    private String component;

    /** 类型，目录、菜单、按钮 */
    @Column(name = "type")
    private Integer type;

    /** 权限 */
    @Column(name = "permission")
    private String permission;

    @Column(unique = true,name = "component_name")
    private String componentName;

    private String icon;

    @Column(name = "cache")
    private Boolean cache;

    @Column(name = "hidden")
    private Boolean hidden;

    /** 上级菜单ID */
    @Column(name = "pid",nullable = false)
    private String pid;

    /** 是否为外链 true/false */
    @Column(name = "i_frame")
    private Boolean iFrame;

//    @ManyToMany(mappedBy = "menus")
//    @JsonIgnore
//    private Set<Role> roles;

    @Column(name = "create_time")
    @CreationTimestamp
    private Timestamp createTime;

    public @interface Update {}

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Menu menu = (Menu) o;
        return Objects.equals(id, menu.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
