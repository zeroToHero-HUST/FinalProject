package com.zeroToHero.FinalProject.dbConnect;

import java.sql.SQLException;

public class DBTablesCreate extends DBPreparation
{
    private String query;

    public DBTablesCreate(String url, String user, String password, String query)
    {
        super(url, user, password);
        this.query = query;
    }

    public void create() throws SQLException {
        run(query);
        System.out.println("Create all tables successfully");
    }
}
