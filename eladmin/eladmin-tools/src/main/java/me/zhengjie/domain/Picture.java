package me.zhengjie.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * sm.ms图床
 *
 * @author Zheng Jie
 * @date 2018-12-27
 */
@Data
@Entity
@Table(name = "picture")
@GenericGenerator(name = "jpa-uuid", strategy = "uuid")
public class Picture implements Serializable {

    @Id
    @GeneratedValue(generator = "jpa-uuid")
    private String id;

    private String filename;

    private String url;

    @Column(name = "picture_size")
    private String size;

    private String height;

    private String width;

    @Column(name = "delete_url")
    private String delete;

    private String username;

    @CreationTimestamp
    @Column(name = "create_time")
    private Timestamp createTime;

    /** 用于检测文件是否重复 */
    private String md5Code;

    @Override
    public String toString() {
        return "Picture{" +
                "filename='" + filename + '\'' +
                '}';
    }
}
