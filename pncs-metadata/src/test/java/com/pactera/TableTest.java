package com.pactera;

import com.pactera.metadata.DataSource;
import com.pactera.metadata.Tables;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import schemacrawler.schema.Table;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Collection;

/*@RunWith(SpringRunner.class)
@SpringBootTest*/
@Slf4j
public class TableTest {

    @Test
    public void test2() {
        log.info("test hello 2");
        Connection conn = null;
        try {
            conn = DataSource.getConnection("jdbc:mysql://127.0.0.1:3306/sshs?zeroDateTimeBehavior=CONVERT_TO_NULL&serverTimezone=GMT", "root", "root");
            Collection<Table> tables = Tables.getTables(conn, DataSource.getSchema(conn, "sshs"), "");
            log.debug(tables.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }


    }
}
