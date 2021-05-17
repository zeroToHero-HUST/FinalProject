package com.zeroToHero.FinalProject.dbConnect;

import java.sql.Connection;
import  java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnectionManager {
    private Connection connection;
    public DBConnectionManager(String dbURL, String user, String pwd) throws ClassNotFoundException, SQLException{
        this.connection = DriverManager.getConnection(dbURL,user,pwd);

    }
    public Connection getConnection(){
        return this.connection;

    }

}