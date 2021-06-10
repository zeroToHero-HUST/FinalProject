package com.zeroToHero.FinalProject.database.dbPrep;

import com.zeroToHero.FinalProject.database.queries.prepQueries.CreateQuery;
import com.zeroToHero.FinalProject.database.queries.prepQueries.DropQuery;
import com.zeroToHero.FinalProject.database.queries.prepQueries.PopulateQuery;

import java.sql.SQLException;

public class DBPrepMain implements CreateQuery, PopulateQuery
{
    public static void main(String[] args) throws SQLException {

        switch (args[0])
        {
            case "create-tables":
                new DBTablesCreate(CreateQuery.createAll.toString()).create();
                break;
            case "drop-tables":
                new DBTablesDrop(DropQuery.dropTables).drop();
                break;
            case "populate-tables":
                new DBTablesPopulate(PopulateQuery.insertAll.toString()).populate();
                break;
            case "setup-database":
                new DBTablesDrop(DropQuery.dropTables).drop();
                new DBTablesCreate(CreateQuery.createAll.toString()).create();
                new DBTablesPopulate(PopulateQuery.insertAll.toString()).populate();
                break;
            default:
                System.out.println("Usage: mvn exec:java -P {profile}");
        }
    }
}
