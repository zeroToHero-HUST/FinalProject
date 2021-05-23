package com.zeroToHero.FinalProject.database.dbPrep;

import java.sql.SQLException;

public class DBTablesCreate extends DBPrep
{
    private String query;

    public DBTablesCreate(String query)
    {
        this.query = query;
    }

    public void create() throws SQLException {
        run(query);
        System.out.println("Create all tables successfully");
    }
}
