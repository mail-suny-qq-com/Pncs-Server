package me.zhengjie.modules.mnt.domain;

import lombok.Data;
import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

/**
* @author zhanghouying
* @date 2019-08-24
*/
@Entity
@Data
@Table(name="mnt_server")
@GenericGenerator(name = "jpa-uuid", strategy = "uuid")
public class ServerDeploy implements Serializable {

    @Id
    @GeneratedValue(generator = "jpa-uuid")
    private String id;

    private String name;

    private String ip;

    private Integer port;

    private String account;

    private String password;

    @CreationTimestamp
    private Timestamp createTime;

    public void copy(ServerDeploy source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
