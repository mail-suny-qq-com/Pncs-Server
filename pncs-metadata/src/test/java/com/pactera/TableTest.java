package com.pactera;

import com.pactera.metadata.DataSource;
import com.pactera.metadata.Tables;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import schemacrawler.schema.Column;
import schemacrawler.schema.Table;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;

/*@RunWith(SpringRunner.class)
@SpringBootTest*/
@Slf4j
public class TableTest {

    @Test
    public void test2() {
        log.info("test hello 2");
        Connection conn = null;
        try {
           conn = DataSource.getConnection("jdbc:mysql://127.0.0.1:3306/sshs?useSSL=false&serverTimezone=Asia/Shanghai", "root", "root");
            //  conn = DataSource.getConnection("jdbc:mysql://127.0.0.1:6688/smartbidemo?useSSL=false&serverTimezone=Asia/Shanghai", "admin", "admin");
            Collection<Table> tables = Tables.getTables(conn, DataSource.getSchema(conn, "sshs"), "");
            for (Table table : tables) {
                log.info("name:" + table.getName() + " FullName:" + table.getFullName() + "   remarks:" + table.getRemarks());
                List<Column> columns = table.getColumns();
                for(Column column:columns){
                    log.info("      name:" + column.getName() + " FullName:" + column.getFullName() + "   remarks:" + column.getRemarks());
                }
              //  log.debug(tables.toString());
            }

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
