package com.pactera.core.version;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.AnnotationUtils;
import org.springframework.data.web.PageableHandlerMethodArgumentResolver;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.mvc.condition.RequestCondition;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

import java.lang.reflect.Method;
import java.util.List;

/**
 * 自定义匹配的处理器
 */
@Configuration
public class ApiVersionConfig extends WebMvcConfigurationSupport {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/**").addResourceLocations("classpath:/static/");
        registry.addResourceHandler("swagger-ui.html")
                .addResourceLocations("classpath:/META-INF/resources/");
        registry.addResourceHandler("/webjars/**")
                .addResourceLocations("classpath:/META-INF/resources/webjars/");
        super.addResourceHandlers(registry);
    }

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOrigins("*")
                .allowedMethods("GET", "POST", "PUT", "OPTIONS", "DELETE", "PATCH")
                .allowCredentials(true).maxAge(3600);
    }

    /**
     * 重写请求过处理的方法
     */
    public RequestMappingHandlerMapping requestMappingHandlerMapping() {
        RequestMappingHandlerMapping handlerMapping = new CustomRequestMappingHandlerMapping();
        handlerMapping.setOrder(0);
        return handlerMapping;
    }

    /**
     * 自定义匹配的处理器
     * Created on 2019/4/18 14:10.
     *
     * @author caogu
     */
    private static class CustomRequestMappingHandlerMapping extends RequestMappingHandlerMapping {
        @Override
        protected RequestCondition<ApiVersionCondition> getCustomTypeCondition(Class<?> handlerType) {
            Version apiVersion = AnnotationUtils.findAnnotation(handlerType, Version.class);
            return createCondition(apiVersion);
        }

        @Override
        protected RequestCondition<ApiVersionCondition> getCustomMethodCondition(Method method) {
            Version apiVersion = AnnotationUtils.findAnnotation(method, Version.class);
            return createCondition(apiVersion);
        }

        private RequestCondition<ApiVersionCondition> createCondition(Version apiVersion) {
            return apiVersion == null ? null : new ApiVersionCondition(apiVersion.value());
        }
    }
    @Override
    public void addArgumentResolvers(List<HandlerMethodArgumentResolver> argumentResolvers) {
        // 注册Spring data jpa pageable的参数分解器
        argumentResolvers.add(new PageableHandlerMethodArgumentResolver());
    }
}