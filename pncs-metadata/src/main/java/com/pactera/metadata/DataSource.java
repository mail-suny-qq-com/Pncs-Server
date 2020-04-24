package com.pactera.metadata;

import schemacrawler.schema.Catalog;
import schemacrawler.schema.Schema;
import schemacrawler.schemacrawler.*;
import schemacrawler.tools.databaseconnector.DatabaseConnectionSource;
import schemacrawler.tools.databaseconnector.SingleUseUserCredentials;
import schemacrawler.utility.SchemaCrawlerUtility;

import java.sql.Connection;
import java.util.Collection;

/**
 * 获取数据库连接工具类
 */
public class DataSource {
    /**
     * 获取连接
     *
     * @param url
     * @param username
     * @param password
     * @return
     */
    public static Connection getConnection(String url, String username, String password) {
        final DatabaseConnectionSource dataSource =
                new DatabaseConnectionSource(url);
        dataSource.setUserCredentials(new SingleUseUserCredentials(username, password));
        return dataSource.get();
    }

    /**
     * 获取schemas
     *
     * @param connection
     * @param regular
     * @return
     */
    public static Collection<Schema> getSchemas(Connection connection, String regular) {
        // Create the options
        final SchemaCrawlerOptionsBuilder optionsBuilder =
                SchemaCrawlerOptionsBuilder.builder()
                        // Set what details are required in the schema - this affects the
                        // time taken to crawl the schema
                        .withSchemaInfoLevel(SchemaInfoLevelBuilder.standard())
                        .includeSchemas(new RegularExpressionInclusionRule(regular));
        // .includeTables(tableFullName -> !tableFullName.contains(""));
        final SchemaCrawlerOptions options = optionsBuilder.toOptions();

        // Get the schema definition
        try {
            final Catalog catalog = SchemaCrawlerUtility.getCatalog(connection, options);
            return catalog.getSchemas();
        } catch (SchemaCrawlerException e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 获取schema
     *
     * @param connection
     * @param name
     * @return
     */
    public static Schema getSchema(Connection connection, String name) {
        // Create the options
        final SchemaCrawlerOptionsBuilder optionsBuilder =
                SchemaCrawlerOptionsBuilder.builder()
                        // Set what details are required in the schema - this affects the
                        // time taken to crawl the schema
                        .withSchemaInfoLevel(SchemaInfoLevelBuilder.standard());
        //.includeSchemas(new RegularExpressionInclusionRule(regular));
        // .includeTables(tableFullName -> !tableFullName.contains(""));
        final SchemaCrawlerOptions options = optionsBuilder.toOptions();

        // Get the schema definition
        try {
            final Catalog catalog = SchemaCrawlerUtility.getCatalog(connection, options);
            for (Schema schema : catalog.getSchemas()) {
                if (name.equalsIgnoreCase(schema.toString())) {
                    return schema;
                }
            }
            return null;
        } catch (SchemaCrawlerException e) {
            e.printStackTrace();
            return null;
        }
    }
}
