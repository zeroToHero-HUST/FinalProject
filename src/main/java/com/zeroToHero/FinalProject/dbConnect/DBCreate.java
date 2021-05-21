package com.zeroToHero.FinalProject.dbConnect;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class DBCreate extends DBPreparation {
    private String query;

    public DBCreate(String url, String user, String password, String dbName)
    {
        super(url, user, password);
        this.query = "CREATE DATABASE " + dbName;
    }

    public void create() throws SQLException {
        run(query);
    }
}
