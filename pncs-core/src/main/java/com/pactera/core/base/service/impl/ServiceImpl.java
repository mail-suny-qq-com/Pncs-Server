package com.pactera.core.base.service.impl;

import com.pactera.core.base.mapper.BaseMapper;
import org.springframework.stereotype.Component;

//@Component
public class ServiceImpl<M extends BaseMapper<T>, T> extends com.baomidou.mybatisplus.extension.service.impl.ServiceImpl<M, T> {
}
