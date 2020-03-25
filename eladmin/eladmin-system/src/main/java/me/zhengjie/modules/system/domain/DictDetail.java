package me.zhengjie.modules.system.domain;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.sql.Timestamp;

/**
* @author Zheng Jie
* @date 2019-04-10
*/
@Entity
@Getter
@Setter
@Table(name="dict_detail")
@GenericGenerator(name = "jpa-uuid", strategy = "uuid")
public class DictDetail implements Serializable {

    @Id
    @GeneratedValue(generator = "jpa-uuid")
    @Column(name = "id")
    @NotNull(groups = Update.class)
    private String id;

    /** 字典标签 */
    @Column(name = "label",nullable = false)
    private String label;

    /** 字典值 */
    @Column(name = "value",nullable = false)
    private String value;

    /** 排序 */
    @Column(name = "sort")
    private String sort = "999";

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "dict_id")
    private Dict dict;

    @Column(name = "create_time")
    @CreationTimestamp
    private Timestamp createTime;

    public @interface Update {}
}