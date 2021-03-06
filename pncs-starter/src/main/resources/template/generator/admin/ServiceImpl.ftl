package ${package}.service.impl;

import com.pactera.core.base.service.impl.BaseServiceImpl;
import ${package}.mapper.${className}Mapper;
import ${package}.model.${className};
import ${package}.service.I${className}Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
* ${remark}服务实现
* @author ${author}
* @date ${date}
*/
@Service
public class ${className}ServiceImpl  extends BaseServiceImpl<${className}Mapper, ${className}> implements I${className}Service {
    private static final Logger logger = LoggerFactory.getLogger(${className}ServiceImpl.class);

    @Resource
    private ${className}Mapper mapper;
}