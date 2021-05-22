package com.zeroToHero.FinalProject.database;

import java.sql.SQLException;

public class DBTablesDrop extends DBPreparation
{
    private String query;

    public DBTablesDrop(String url, String user, String password, String query) {
        super(url, user, password);
        this.query = query;
    }

    public void drop() throws SQLException {
        run(query);
        System.out.println("Drop all tables successfully");
    }
}
