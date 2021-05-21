package com.zeroToHero.FinalProject.dbConnect;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.Properties;

public class DatabaseMain implements SQLQuery, PopulateQuery
{
    public Properties loadPropertiesFile(String filePath)
    {
        Properties prop = new Properties();

        try (InputStream resourceAsStream = getClass().getClassLoader().getResourceAsStream(filePath)) {
            prop.load(resourceAsStream);
        } catch (IOException e) {
            System.err.println("Unable to load properties file : " + filePath);
        }

        return prop;
    }

    public static void main(String[] args) throws SQLException {
        DatabaseMain main = new DatabaseMain();

        Properties prop = main.loadPropertiesFile("config.properties");

        String newDBUrl = prop.getProperty("DB.URL.ROOT") + prop.getProperty("DB.HOST.PORT") + "/";
        String dbUrl = newDBUrl + prop.getProperty("DB.DBNAME");
        String user = prop.getProperty("DB.USER");
        String password = prop.getProperty("DB.PASSWORD");

        switch (args[0])
        {
            case "create-database":
                new DBCreate(newDBUrl, user, password, prop.getProperty("DB.DBNAME")).create();
                break;
            case "drop-database":
                new DBDrop(newDBUrl, user, password, prop.getProperty("DB.DBNAME")).drop();
                break;
            case "create-tables":
                new DBTablesCreate(dbUrl, user, password, SQLQuery.createAll.toString()).create();
                break;
            case "drop-tables":
                new DBTablesDrop(dbUrl, user, password, SQLQuery.dropTables).drop();
                break;
            case "populate-tables":
                new DBPopulate(dbUrl, user, password, PopulateQuery.insertAll.toString()).populate();
                break;
            case "setup-database":
                new DBTablesDrop(dbUrl, user, password, SQLQuery.dropTables).drop();
                new DBTablesCreate(dbUrl, user, password, SQLQuery.createAll.toString()).create();
                new DBPopulate(dbUrl, user, password, PopulateQuery.insertAll.toString()).populate();
                break;
            default:
                System.out.println("Usage: mvn exec:java -P {profile}");
        }
    }
}
