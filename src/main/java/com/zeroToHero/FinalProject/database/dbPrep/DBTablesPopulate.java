package com.zeroToHero.FinalProject.database.dbPrep;

import java.sql.SQLException;

public class DBTablesPopulate extends DBPrep
{
    private String query;

    public DBTablesPopulate(String query) {
        this.query = query;
    }

    public void populate() throws SQLException {
        run(query);
        System.out.println("Populate all tables successfully");
    }
}
