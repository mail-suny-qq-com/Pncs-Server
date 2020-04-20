package com.pactera.metadata;

import schemacrawler.schema.Catalog;
import schemacrawler.schema.Column;
import schemacrawler.schema.Schema;
import schemacrawler.schema.Table;
import schemacrawler.schemacrawler.*;
import schemacrawler.utility.SchemaCrawlerUtility;

import java.sql.Connection;
import java.util.Collection;

/**
 * 获取table工具
 */
public class Tables {
    public Collection<Table> getTables(Connection connection, Schema schema, String namePatern) {
        // Create the options
        final SchemaCrawlerOptionsBuilder optionsBuilder =
                SchemaCrawlerOptionsBuilder.builder()
                        // Set what details are required in the schema - this affects the
                        // time taken to crawl the schema
                        .withSchemaInfoLevel(SchemaInfoLevelBuilder.standard())
                        .includeSchemas(new RegularExpressionInclusionRule(schema.getName()))
                        .includeTables(tableFullName -> tableFullName.contains(namePatern));
        final SchemaCrawlerOptions options = optionsBuilder.toOptions();

        // Get the schema definition
        try {
            final Catalog catalog =
                    SchemaCrawlerUtility.getCatalog(connection, options);
            return catalog.getTables(schema);
        } catch (SchemaCrawlerException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Collection<Column> getColumns(Table table) {
        return table.getColumns();
    }
}
