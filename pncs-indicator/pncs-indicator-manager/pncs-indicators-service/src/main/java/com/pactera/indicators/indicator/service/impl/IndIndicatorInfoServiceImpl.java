package com.pactera.indicators.indicator.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pactera.core.base.service.impl.BaseServiceImpl;
import com.pactera.core.exception.BusinessException;
import com.pactera.core.exception.CommonErrorCode;
import com.pactera.core.message.Message;
import com.pactera.core.page.Page;
import com.pactera.indicators.dimension.mapper.IndDimRelationMapper;
import com.pactera.indicators.dimension.model.IndDimRelation;
import com.pactera.indicators.indicator.mapper.IndBaseRuleMapper;
import com.pactera.indicators.indicator.mapper.IndIndicatorInfoMapper;
import com.pactera.indicators.indicator.model.IndBaseRule;
import com.pactera.indicators.indicator.model.IndIndicatorInfo;
import com.pactera.indicators.indicator.service.IIndIndicatorInfoService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 指标基本信息服务实现
 *
 * @author Suny
 * @date 2020-04-01
 */
@Service
public class IndIndicatorInfoServiceImpl extends BaseServiceImpl<IndIndicatorInfoMapper, IndIndicatorInfo> implements IIndIndicatorInfoService {
    private static final Logger logger = LoggerFactory.getLogger(IndIndicatorInfoServiceImpl.class);

    @Resource
    private IndIndicatorInfoMapper mapper;

    @Resource
    private IndBaseRuleMapper baseRuleMapper;

    @Resource
    private IndDimRelationMapper indDimRelationMapper;

    @Override
    public Message<IndIndicatorInfo> save(IndIndicatorInfo model) {
        //1.生成指标编号,这是不是会出现脏读的情况
        String ieCode = mapper.maxCode(model.getIeType());
        if (StringUtils.isBlank(ieCode)) {
            switch (model.getIeType()) {
                case "0":
                    model.setIeCode("M0000001");
                    break;
                case "1":
                    model.setIeCode("B0000001");
                    break;
                case "2":
                    model.setIeCode("P0000001");
                    break;
                case "3":
                    model.setIeCode("Q0000001");
                    break;
            }
        } else {
            model.setIeCode(ieCode.substring(0, 1) + StringUtils.leftPad((Integer.valueOf(ieCode.substring(1)) + 1) + "", 7, '0'));
        }
        logger.debug("生成指标编号：{}", model.getIeCode());
        model.setStatus("0");

        //2.判断指标类型
        if("0".equals(model.getIeType())){
        }else if("1".equals(model.getIeType())){
            //2.1 基础指标:保存指标计算规则表数据
            IndBaseRule indBaseRule = new IndBaseRule();
            indBaseRule.setIeCode(model.getIeCode());//指标编号
            indBaseRule.setStatus("1");//状态(1-启用，0-禁用)
            indBaseRule.setDataSource(model.getDataSource());//数据源
            indBaseRule.setExpression("");//取数表达式
            indBaseRule.setDataTable(model.getDataTable());//取数表名
            indBaseRule.setPeriodCode(model.getPeriodCode());//考核期/数据日期(对应的后台字段)
            indBaseRule.setRuleDesc("");//规则说明
            indBaseRule.setAnalysable("");//是否可分析
            baseRuleMapper.insert(indBaseRule);

            //2.2 基础指标:保存指标维度关系表数据。规则id怎么保存？？？
            for (int i = 0;i<model.getDimCodes().size();i++){
                IndDimRelation indDimRelation = new IndDimRelation();
                indDimRelation.setRuleId("");//规则id
                indDimRelation.setIeCode(model.getIeCode());//指标编号
                indDimRelation.setDimCode(new BigDecimal(model.getDimCodes().get(i)));//维度编号  类型???
                indDimRelation.setTableColumn(model.getPeriodCode());//数据表字段
                indDimRelation.setDimColumn(model.getDimColumns().get(i));
                indDimRelationMapper.insert(indDimRelation);
            }
        }else if("2".equals(model.getIeType())){
        }else{
        }





        //3.保存指标信息表数据
        return super.save(model);
    }

    @Override
    public Message<IndIndicatorInfo> update(IndIndicatorInfo model) {


        //判断指标类型
        if("0".equals(model.getIeType())){
        }else if("1".equals(model.getIeType())){
            //1.通过指标id获取指标计算规则表数据
            IndBaseRule indBaseRule = baseRuleMapper.getEntityByIeCode(model.getIeCode());
            if (indBaseRule == null) {
                throw new BusinessException(CommonErrorCode.NO_DATA_FOUND, model.getIeCode());
            }
            //2.更新指标计算规则表数据
            indBaseRule.setDataSource(model.getDataSource());//数据源
            indBaseRule.setDataTable(model.getDataTable());//取数表名
            indBaseRule.setPeriodCode(model.getPeriodCode());//考核期/数据日期(对应的后台字段)
            baseRuleMapper.updateById(indBaseRule);

            //3.更新指标维度关系表数据-先根据指标编号删除-再新增
            Map<String,Object> map = new HashMap<>();
            map.put("IE_CODE",model.getIeCode());
            indDimRelationMapper.deleteByMap(map);
            for (int i = 0;i<model.getDimCodes().size();i++){
                IndDimRelation indDimRelation = new IndDimRelation();
                indDimRelation.setRuleId("");//规则id
                indDimRelation.setIeCode(model.getIeCode());//指标编号
                indDimRelation.setDimCode(new BigDecimal(model.getDimCodes().get(i)));//维度编号  类型???
                indDimRelation.setTableColumn(model.getPeriodCode());//数据表字段
                indDimRelation.setDimColumn(model.getDimColumns().get(i));
                indDimRelationMapper.insert(indDimRelation);
            }
        }else if("2".equals(model.getIeType())){
        }else{
        }


        //4.更新指基础标信息表数据
        return super.update(model);
    }

    @Override
    public Message<Integer> deleteById(String id) {

        //1.通过id获取指标id
        IndIndicatorInfo indIndicatorInfo = mapper.selectById(id);
        if (indIndicatorInfo == null) {
            throw new BusinessException(CommonErrorCode.NO_DATA_FOUND, id);
        }

        //判断指标类型
        if("0".equals(indIndicatorInfo.getIeType())){
        }else if("1".equals(indIndicatorInfo.getIeType())){
            String ieCode = indIndicatorInfo.getIeCode();

            //2.通过指标编号删除指标计算规则表数据
            Map<String,Object> map = new HashMap<>();
            map.put("IE_CODE",ieCode);
            baseRuleMapper.deleteByMap(map);

            //3.根据指标编号删除指标维度关系表数据
            indDimRelationMapper.deleteByMap(map);
        }else if("2".equals(indIndicatorInfo.getIeType())){
        }else{
        }

        //4.删除基本指标信息表数据
        return super.deleteById(id);
    }

    @Override
    public Message<Integer> deleteByIds(List<String> ids) {

        for (String id : ids) {
            //1.通过id获取指标编号
            IndIndicatorInfo indIndicatorInfo = mapper.selectById(id);
            if (indIndicatorInfo == null) {
                throw new BusinessException(CommonErrorCode.NO_DATA_FOUND, id);
            }
            //判断指标类型
            if("0".equals(indIndicatorInfo.getIeType())){
            }else if("1".equals(indIndicatorInfo.getIeType())){
                String ieCode = indIndicatorInfo.getIeCode();
                //2.通过指标编号删除指标计算规则表数据
                Map<String,Object> map = new HashMap<>();
                map.put("IE_CODE",ieCode);
                baseRuleMapper.deleteByMap(map);

                //3.根据指标编号删除指标维度关系表数据
                indDimRelationMapper.deleteByMap(map);
            }else if("2".equals(indIndicatorInfo.getIeType())){
            }else{
            }
        }

        //4.删除基本指标信息表数据
        return super.deleteByIds(ids);
    }

    /**
     * 分页查询
     * @param indIndicatorInfo 查询条件
     * @return
     */
    @Override
    public Message<IPage<IndIndicatorInfo>> findForPageListBean(Integer limit, Integer offset, IndIndicatorInfo indIndicatorInfo) {
        long pageSize = 10;
        if (limit != null && limit > 0) {
            pageSize = Long.min(1000, limit);
        }
        long current = offset+1;
        IPage<IndIndicatorInfo> page = new Page<>(current, pageSize);
        return Message.success(mapper.findForListBean(page, indIndicatorInfo));
    }
}