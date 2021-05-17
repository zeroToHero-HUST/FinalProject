package com.zeroToHero.FinalProject.dbConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class createTable implements SQLQuery {
    public static void main(String[] args){
        // select query from interface SQLQuery
        String SQL_SELECT = SQLQuery.creatTBViewer;
        // connect database and excute query
        try {
            DBConnectionManager dbConnectionManager = new DBConnectionManager("jdbc:postgresql://localhost/postgres","postgres","123456");
            Connection conn = dbConnectionManager.getConnection();
            PreparedStatement Pprep = conn.prepareStatement(SQL_SELECT);
            Pprep.execute();
        }
        catch (SQLException e){
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        }
        catch (Exception e){
            e.printStackTrace();
        }


    }
}
