package me.zhengjie;

import me.zhengjie.annotation.AnonymousAccess;
import me.zhengjie.utils.SpringContextHolder;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.servlet.server.ServletWebServerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.FilterType;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.support.OpenEntityManagerInViewFilter;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @author Zheng Jie
 * @date 2018/11/15 9:20:19
 */
@EnableSwagger2
@EnableAsync
@RestController
//@EntityScan("me.zhengjie")//jpa Repository 扫描
//@EnableJpaRepositories("me.zhengjie")
@SpringBootApplication(scanBasePackages = {"com.pactera", "me.zhengjie"})
@MapperScan(basePackages = {"com.pactera.*.*.mapper","me.zhengjie.mapper"})
@EnableTransactionManagement
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
    @Bean
    public OpenEntityManagerInViewFilter openEntityManagerInViewFilter() {
        return new OpenEntityManagerInViewFilter();
    }

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
