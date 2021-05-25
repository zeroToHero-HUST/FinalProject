package com.zeroToHero.FinalProject.database.dbPrep;

import com.zeroToHero.FinalProject.utilities.LoadProperties;

import java.sql.Connection;
import  java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;


public class DBPrepConnection {
    private Connection connection;
    private String user;
    private String password;
    private String dbURL;
    private Properties prop = new LoadProperties("config.properties").getProp();

    public DBPrepConnection() throws SQLException {
        this.dbURL = this.prop.getProperty("DB.URL.ROOT") + this.prop.getProperty("DB.HOST.PORT") + "/" + this.prop.getProperty("DB.DBNAME");
        this.user = this.prop.getProperty("DB.USER");
        this.password = this.prop.getProperty("DB.PASSWORD");
        this.connection = DriverManager.getConnection(this.dbURL, this.user, this.password);

    }

    public Connection getConnection() {
        return this.connection;
    }
}