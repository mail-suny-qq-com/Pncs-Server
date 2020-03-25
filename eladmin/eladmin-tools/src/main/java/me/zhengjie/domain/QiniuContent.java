package me.zhengjie.domain;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * 上传成功后，存储结果
 * @author Zheng Jie
 * @date 2018-12-31
 */
@Data
@Entity
@Table(name = "qiniu_content")
@GenericGenerator(name = "jpa-uuid", strategy = "uuid")
public class QiniuContent implements Serializable {

    @Id
    @GeneratedValue(generator = "jpa-uuid")
    private String id;

    /** 文件名 */
    @Column(name = "name")
    private String key;

    /** 空间名 */
    private String bucket;

    /** 大小 */
    @Column(name = "file_size")
    private String size;

    /** 文件地址 */
    private String url;

    private String suffix;

    /** 空间类型：公开/私有 */
    private String type = "公开";

    @UpdateTimestamp
    @Column(name = "update_time")
    private Timestamp updateTime;
}
