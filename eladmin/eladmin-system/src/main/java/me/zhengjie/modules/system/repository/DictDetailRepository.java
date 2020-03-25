package me.zhengjie.modules.system.repository;

import me.zhengjie.modules.system.domain.DictDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

/**
* @author Zheng Jie
* @date 2019-04-10
*/
public interface DictDetailRepository extends JpaRepository<DictDetail, String>, JpaSpecificationExecutor<DictDetail> {
    /**
     * 查询重置密码
     * @param
     */
    @Query(value = "select value from dict_detail where dict_id in (select id from dict where name='password')",nativeQuery = true)
    String dictPassword();
}