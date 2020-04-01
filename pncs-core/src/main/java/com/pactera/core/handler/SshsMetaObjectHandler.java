package com.pactera.core.handler;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import com.pactera.core.util.SystemUtil;
import org.apache.ibatis.reflection.MetaObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 自动填充 创建与更新信息
 *
 * @author Suny
 * @date 2019-12-13
 */
@Component
public class SshsMetaObjectHandler implements MetaObjectHandler {

    private static final Logger LOGGER = LoggerFactory.getLogger(SshsMetaObjectHandler.class);

    @Override
    public void insertFill(MetaObject metaObject) {
        LOGGER.debug("start insert fill ....");
        this.setFieldValByName("crtUserCode", SystemUtil.getCurrentUser().getUserCode(), metaObject);//版本号3.0.6以及之前的版本
        this.setFieldValByName("crtDate", new Date(), metaObject);//版本号3.0.6以及之前的版本
        this.setFieldValByName("crtOrgCode", SystemUtil.getCurrentUser().getOrgCode(), metaObject);//@since 快照：3.0.7.2-SNAPSHOT， @since 正式版暂未发布3.0.7
        //this.setFieldValByName("crtUser", SystemUtil.getCurrentUser().getUserCode(), metaObject);//@since 快照：3.0.7.2-SNAPSHOT， @since 正式版暂未发布3.0.7
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        LOGGER.debug("start update fill ....");
        this.setFieldValByName("updUserCode", SystemUtil.getCurrentUser().getUserCode(), metaObject);//版本号3.0.6以及之前的版本
        this.setFieldValByName("updDate", new Date(), metaObject);//版本号3.0.6以及之前的版本
        this.setFieldValByName("updOrgCode", SystemUtil.getCurrentUser().getOrgCode(), metaObject);//@since 快照：3.0.7.2-SNAPSHOT， @since 正式版暂未发布3.0.7
        //this.setUpdateFieldValByName("operator", "Tom", metaObject);//@since 快照：3.0.7.2-SNAPSHOT， @since 正式版暂未发布3.0.7
    }
}