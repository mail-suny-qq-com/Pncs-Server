package com.pactera.core.util;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.EmbeddedValueResolverAware;
import org.springframework.stereotype.Component;
import org.springframework.util.StringValueResolver;

/**
 * 代码中获取bean工具类
 *
 * @author Suny
 * @date 2017-12-01
 */
@Component
public class SpringUtil implements ApplicationContextAware, EmbeddedValueResolverAware {
    static Logger logger = LoggerFactory.getLogger(SpringUtil.class);
    /**
     * Spring应用上下文环境
     */
    private static ApplicationContext applicationContext;

    private static StringValueResolver stringValueResolver;

    /**
     * 实现ApplicationContextAware接口的回调方法。设置上下文环境
     *
     * @param applicationContext
     */
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) {
        SpringUtil.applicationContext = applicationContext;
    }

    /**
     * @return ApplicationContext
     */
    public static ApplicationContext getApplicationContext() {
        return applicationContext;
    }

    /**
     * 获取对象
     *
     * @param name
     * @return Object
     * @throws BeansException
     */
    public static Object getBean(String name) throws BeansException {
        return applicationContext.getBean(name);
    }

    public static Object getComponent(String name) {
        Object object = null;
        try {
            object = applicationContext.getBean(name);
        } catch (BeansException e) {
            logger.warn("获取Component[" + name + "]错误!" + e.getMessage());
        }
        return object;
    }

    /**
     * 动态获取配置文件中的值
     *
     * @param name
     * @return
     */
    public static String getPropertiesValue(String name, String defaultValue) {
        try {
            name = "${" + name + "}";
            String value = stringValueResolver.resolveStringValue(name);
            if (StringUtils.isBlank(value)) {
                logger.warn(String.format("当前环境变量中没有{%s}的配置", name));
                return defaultValue;
            }
            return value;
        } catch (Exception e) {
            // 获取失败则返回null
            logger.error(String.format("当前环境变量中没有{%s}的配置", name));
            return null;
        }
    }

    @Override
    public void setEmbeddedValueResolver(StringValueResolver stringValueResolver) {
        this.stringValueResolver = stringValueResolver;
    }
}