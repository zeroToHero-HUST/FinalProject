package com.zeroToHero.FinalProject.database;

import java.sql.SQLException;

public class DBDrop extends DBPreparation {
    private String query;

    public DBDrop(String url, String user, String password, String dbName)
    {
        super(url, user, password);
        this.query = "DROP DATABASE " + dbName;
    }

    public void drop() throws SQLException {
        run(query);
        System.out.println("Drop database successfully");
    }
}
