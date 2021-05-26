package com.zeroToHero.FinalProject.models.dao;

import com.zeroToHero.FinalProject.database.DBConnectionManager;
import com.zeroToHero.FinalProject.database.queries.mainQueries.CitiesQuery;
import com.zeroToHero.FinalProject.models.beans.Cities;

import javax.naming.NamingException;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class CitiesDAO {
    private Connection conn = null;
    private PreparedStatement pst = null;
    private Statement st = null;
    private ResultSet rs = null;

    public Map<Long, String> getAllCities()
    {
        ArrayList<Cities> result = new ArrayList<>();
        Map<Long, String> result1 = new HashMap<>();

        try {
            conn = DBConnectionManager.getConnection();
            pst = conn.prepareStatement(CitiesQuery.getAllCities);
            rs = pst.executeQuery();

            while (rs.next())
            {
                result1.put(rs.getLong("city_id"), rs.getString("name"));
            }
        } catch (SQLException | NamingException e) {
            e.printStackTrace();
        } finally {
            DBConnectionManager.closeConnection(conn, pst, rs);
        }

        return result1;
    }
}
