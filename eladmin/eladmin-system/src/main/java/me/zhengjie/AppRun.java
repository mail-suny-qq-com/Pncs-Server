package me.zhengjie;

import me.zhengjie.annotation.AnonymousAccess;
import me.zhengjie.utils.SpringContextHolder;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.servlet.server.ServletWebServerFactory;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Zheng Jie
 * @date 2018/11/15 9:20:19
 */
//@EnableAsync
//@RestController
//@SpringBootApplication
//@EnableTransactionManagement
//@MapperScan("me.zhengjie.mapper")
public class AppRun /*extends SpringBootServletInitializer*/ {

    public static void main(String[] args) {
        SpringApplication.run(AppRun.class, args);
    }

    //编译war包时使用
    /*@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(AppRun.class);
    }*/

    //编译war包时注释  去掉tomcat webserver
    @Bean
    public ServletWebServerFactory webServerFactory() {
        TomcatServletWebServerFactory fa = new TomcatServletWebServerFactory();
        fa.addConnectorCustomizers(connector -> connector.setProperty("relaxedQueryChars", "[]{}"));
        return fa;
    }

    @Bean
    public SpringContextHolder springContextHolder() {
        return new SpringContextHolder();
    }

    /**
     * 访问首页提示
     * @return /
     */
    @GetMapping("/")
    @AnonymousAccess
    public String index() {
        return "Backend service started successfully";
    }
}
