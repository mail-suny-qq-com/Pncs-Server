package me.zhengjie.modules.quartz.domain;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * @author Zheng Jie
 * @date 2019-01-07
 */
@Getter
@Setter
@Entity
@Table(name = "sys_quartz_job")
@GenericGenerator(name = "jpa-uuid", strategy = "uuid")
public class QuartzJob  implements Serializable {

    public static final String JOB_KEY = "JOB_KEY";

    @Id
    @GeneratedValue(generator = "jpa-uuid")
    @NotNull(groups = {Update.class})
    private String id;

    /** 定时器名称 */
    @Column(name = "job_name")
    private String jobName;

    /** Bean名称 */
    @Column(name = "bean_name")
    @NotBlank
    private String beanName;

    /** 方法名称 */
    @Column(name = "method_name")
    @NotBlank
    private String methodName;

    /** 参数 */
    @Column(name = "params")
    private String params;

    /** cron表达式 */
    @Column(name = "cron_expression")
    @NotBlank
    private String cronExpression;

    /** 状态 */
    @Column(name = "is_pause")
    private Boolean isPause = false;

    /** 备注 */
    @Column(name = "remark")
    @NotBlank
    private String remark;

    @Column(name = "create_time")
    @CreationTimestamp
    private Timestamp createTime;

    public @interface Update {}
}