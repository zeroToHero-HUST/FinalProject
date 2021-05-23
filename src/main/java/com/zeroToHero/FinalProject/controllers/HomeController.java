package com.zeroToHero.FinalProject.controllers;

import com.zeroToHero.FinalProject.database.DBConnectionManager;
import com.zeroToHero.FinalProject.models.Tours;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HomeController {
    public List<Tours> getPopularDestinations() throws SQLException {

        Connection conn = new DBConnectionManager("jdbc:postgresql://localhost:5432/postgres", "postgres", "123456").getConnection();
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery("SELECT tour_id, title, duration, price FROM tours;");
        List<Tours> result = new ArrayList<>();
        while(rs.next())
        {
            Tours temp = new Tours();
            temp.setTourId(rs.getLong("tour_id"));
            temp.setTitle(rs.getString("title"));
            temp.setDuration(rs.getLong("duration"));
            temp.setPrice(rs.getString("price"));
            result.add(temp);
        }
        return result;
    }
}
