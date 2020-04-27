package com.pactera.core.wrapper;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.core.metadata.TableInfoHelper;
import com.baomidou.mybatisplus.core.toolkit.ReflectionKit;
import com.google.common.base.CaseFormat;
import org.apache.commons.lang.StringUtils;
import org.springframework.core.GenericTypeResolver;
import org.springframework.core.annotation.AnnotatedElementUtils;
import org.springframework.core.annotation.AnnotationUtils;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/**
 * 重写Wrapper,实现 属性与字段的映射关系
 *
 * @author Suny
 * @date 2019-12-13
 */
public class QueryWrapper<T> extends com.baomidou.mybatisplus.core.conditions.query.QueryWrapper<T> {
    public QueryWrapper() {
    }

    public QueryWrapper(T entity) {
        super(entity);
    }

    public QueryWrapper(T entity, String... columns) {
        super(entity, columns);
    }

    @Override
    protected String columnToString(String column) {
        Class<T> type = this.getEntityClass();
        if (type != null) {
            Field col = null;
            try {
                col = type.getDeclaredField(column);
            } catch (NoSuchFieldException e) {
                e.printStackTrace();
            }
            if (col != null) {
                TableField field = AnnotationUtils.findAnnotation(col, TableField.class);
                if(StringUtils.isNotBlank(field.value())){
                    return field.value();
                }
            }
        }
        return CaseFormat.LOWER_CAMEL.to(CaseFormat.UPPER_UNDERSCORE, column);
    }

}
