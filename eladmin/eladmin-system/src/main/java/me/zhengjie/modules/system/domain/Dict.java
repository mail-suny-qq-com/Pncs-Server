package me.zhengjie.modules.system.domain;

import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

/**
* @author Zheng Jie
* @date 2019-04-10
*/
@Entity
@Getter
@Setter
@Table(name="dict")
@GenericGenerator(name = "jpa-uuid", strategy = "uuid")
public class Dict implements Serializable {

    @Id
    @GeneratedValue(generator = "jpa-uuid")
    @Column(name = "id")
    @NotNull(groups = Update.class)
    private String id;

    @Column(name = "name",nullable = false,unique = true)
    @NotBlank
    private String name;

    @Column(name = "remark")
    private String remark;

    @Column(name = "create_time")
    @CreationTimestamp
    private Timestamp createTime;

    @OneToMany(mappedBy = "dict",cascade={CascadeType.PERSIST,CascadeType.REMOVE})
    private List<DictDetail> dictDetails;

    public @interface Update {}
}