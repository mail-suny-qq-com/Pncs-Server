package me.zhengjie.modules.monitor.repository;

import me.zhengjie.modules.monitor.domain.Visits;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

/**
 * @author Zheng Jie
 * @date 2018-12-13
 */
@Repository
public interface VisitsRepository extends JpaRepository<Visits,String> {

    /**
     * findByDate
     * @param date 日期
     * @return Visits
     */
    Visits findByDate(String date);

    /**
     * 获得一个时间段的记录
     * @param date1 日期1
     * @param date2 日期2
     * @return List
     */
    @Query(value = "select * FROM sys_visits where create_time between ?1 and ?2 order by create_time",nativeQuery = true)
    List<Visits> findAllVisits(LocalDate date1, LocalDate date2);
}
