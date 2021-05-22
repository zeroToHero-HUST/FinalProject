package com.zeroToHero.FinalProject.database;

import java.sql.SQLException;

public class DBPopulate extends DBPreparation
{
    private String query;

    public DBPopulate(String url, String username, String password, String query) {
        super(url, username, password);
        this.query = query;
    }

    public void populate() throws SQLException {
        run(query);
        System.out.println("Populate all tables successfully");
    }
}
