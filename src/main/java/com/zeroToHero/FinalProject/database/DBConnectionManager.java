package com.zeroToHero.FinalProject.database;

import java.sql.Connection;
import  java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnectionManager {
    private Connection connection;

    public DBConnectionManager(String dbURL, String user, String password) throws SQLException {
        this.connection = DriverManager.getConnection(dbURL, user, password);
    }

    public Connection getConnection() {
        return this.connection;
    }
}