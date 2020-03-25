package me.zhengjie.modules.system.repository;

import me.zhengjie.modules.system.domain.Dept;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import java.util.List;
import java.util.Set;

/**
* @author Zheng Jie
* @date 2019-03-25
*/
@SuppressWarnings("all")
public interface DeptRepository extends JpaRepository<Dept,String>, JpaSpecificationExecutor<Dept> {

    /**
     * 根据 PID 查询
     * @param id pid
     * @return /
     */
    List<Dept> findByPid(String id);

    /**
     * 根据ID查询名称
     * @param id ID
     * @return /
     */
    @Query(value = "select name from dept where id = ?1",nativeQuery = true)
    String findNameById(String id);

    /**
     * 根据角色ID 查询
     * @param id 角色ID
     * @return /
     */
    Set<Dept> findByRoles_Id(String id);

    /**
     * 根据pid查询最大机构号
     * @param pid
     * @return
     */
    @Query(value = "select max(id) from dept where pid=?1",nativeQuery = true)
    String findMaxIdByPid(String pid);
}