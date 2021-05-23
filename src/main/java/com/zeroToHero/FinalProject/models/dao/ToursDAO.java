package com.zeroToHero.FinalProject.models.dao;

import com.zeroToHero.FinalProject.database.DBConnectionManager;
import com.zeroToHero.FinalProject.database.queries.mainQueries.ToursQuery;
import com.zeroToHero.FinalProject.models.beans.Tours;

import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ToursDAO {
    private Connection conn = null;

    public ArrayList<Tours> getPopularTours()
    {
        ArrayList<Tours> popTours = new ArrayList<>();
        Statement st = null;
        ResultSet rs = null;

        try {
            conn = DBConnectionManager.getConnection();
            st = conn.createStatement();
            rs = st.executeQuery(ToursQuery.getPopularTours);

            while (rs.next())
            {
                Tours tour = new Tours();
                tour.setTourId(rs.getLong("tour_id"));
                tour.setTitle(rs.getString("title"));
                tour.setDuration(rs.getLong("duration"));
                tour.setPrice(rs.getString("price"));
                tour.setCountryName(rs.getString("country_name"));

                popTours.add(tour);
            }
        }
        catch (SQLException | NamingException throwable) {
            throwable.printStackTrace();
        }
        finally {
            DBConnectionManager.closeConnection(conn, st, rs);
        }
        return popTours;
    }
}
