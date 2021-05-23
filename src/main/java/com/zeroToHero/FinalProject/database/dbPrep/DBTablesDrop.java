package com.zeroToHero.FinalProject.database.dbPrep;

import java.sql.SQLException;

public class DBTablesDrop extends DBPrep
{
    private String query;

    public DBTablesDrop(String query) {
        this.query = query;
    }

    public void drop() throws SQLException {
        run(query);
        System.out.println("Drop all tables successfully");
    }
}
