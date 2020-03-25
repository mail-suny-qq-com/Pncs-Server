package me.zhengjie.domain;

import lombok.*;
import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

/**
* @author Zheng Jie
* @date 2019-09-05
*/
@Getter
@Setter
@Entity
@Table(name="local_storage")
@NoArgsConstructor
@GenericGenerator(name = "jpa-uuid", strategy = "uuid")
public class LocalStorage  implements Serializable {

    @Id
    @GeneratedValue(generator = "jpa-uuid")
    @Column(name = "id")
    private String id;

    /** 真实文件名 */
    @Column(name = "real_name")
    private String realName;

    /**文件名 */
    @Column(name = "name")
    private String name;

    /**后缀 */
    @Column(name = "suffix")
    private String suffix;

    /** 路径 */
    @Column(name = "path")
    private String path;

    /** 类型 */
    @Column(name = "type")
    private String type;

    /** 大小 */
    @Column(name = "file_size")
    private String size;

    /** 操作人 */
    @Column(name = "operate")
    private String operate;

    // 是否门户制度文件
    @Column(name = "portal_visible")
    private String visible;

    @Column(name = "create_time")
    @CreationTimestamp
    private Timestamp createTime;

    public LocalStorage(String realName,String name, String suffix, String path, String type, String size, String operate, String visible) {
        this.realName = realName;
        this.name = name;
        this.suffix = suffix;
        this.path = path;
        this.type = type;
        this.size = size;
        this.operate = operate;
        this.visible = visible;
    }

    public void copy(LocalStorage source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}