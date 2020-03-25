package me.zhengjie.modules.quartz.config;

import com.alibaba.fastjson.JSONObject;
import me.zhengjie.db.SqlUtils;
import me.zhengjie.modules.mnt.domain.Database;
import me.zhengjie.modules.mnt.repository.DatabaseRepository;
import me.zhengjie.modules.quartz.domain.QuartzJob;
import me.zhengjie.modules.quartz.repository.QuartzJobRepository;
import me.zhengjie.modules.quartz.utils.QuartzManage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Zheng Jie
 * @date 2019-01-07
 */
@Component
public class JobRunner implements ApplicationRunner {

    private final QuartzJobRepository quartzJobRepository;

    private final QuartzManage quartzManage;

    @Autowired
    DatabaseRepository databaseRepository;

    public JobRunner(QuartzJobRepository quartzJobRepository, QuartzManage quartzManage) {
        this.quartzJobRepository = quartzJobRepository;
        this.quartzManage = quartzManage;
    }

    /**
     * 项目启动时重新激活启用的定时任务
     * @param applicationArguments /
     */
    @Override
    public void run(ApplicationArguments applicationArguments){
        System.out.println("--------------------注入定时任务---------------------");
        List<QuartzJob> quartzJobs = quartzJobRepository.findByIsPauseIsFalse();
        quartzJobs.forEach(quartzManage::addJob);
        System.out.println("--------------------定时任务注入完成---------------------");

        System.out.println("--------------------注入多数据源配置---------------------");
        System.out.println("//此处只加载配置,未初始化数据源,如果为常用数据源,可改为初始化数据源");
        List<Database> list = databaseRepository.findAll();
        Map<String, JSONObject> map = new HashMap<>();
        for (Database db:list){
            JSONObject object = new JSONObject();
            object.put("jdbcUrl",db.getJdbcUrl());
            object.put("userName",db.getUserName());
            object.put("password",db.getPwd());
            map.put(db.getName().toLowerCase(),object);
        }
        SqlUtils.setConfigMap(map);
        System.out.println("--------------------多数据源配置注入完成------------------");
    }
}
