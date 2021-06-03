package com.zeroToHero.FinalProject.models.dao;

import com.zeroToHero.FinalProject.database.DBConnectionManager;
import com.zeroToHero.FinalProject.database.queries.mainQueries.ToursQuery;
import com.zeroToHero.FinalProject.models.beans.Cities;
import com.zeroToHero.FinalProject.models.beans.Tours;

import javax.naming.NamingException;
import java.sql.*;
import java.util.ArrayList;

public class ToursDAO {
    private Connection conn = null;
    private PreparedStatement pst = null;
    private Statement st = null;
    private ResultSet rs = null;

    public ArrayList<Tours> getPopularTours()
    {
        ArrayList<Tours> popTours = new ArrayList<>();

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
                System.out.println(rs.getString("price"));
                tour.setCountryName(rs.getString("country_name"));

                String[] images = (String[]) rs.getArray("images").getArray();
                tour.setImages(images[0]);

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

    public ArrayList<Tours> getToursByPage(int pageNumber)
    {
        ArrayList<Tours> result = new ArrayList<>();

        try {
            conn = DBConnectionManager.getConnection();
            pst = conn.prepareStatement(ToursQuery.getToursByPage);
            pst.setInt(1, pageNumber);
            rs = pst.executeQuery();

            while (rs.next())
            {
                Tours tour = new Tours(
                        rs.getLong("tour_id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("images"),
                        rs.getLong("duration"),
                        rs.getDouble("rating"),
                        rs.getString("price")
                );

                Integer[] citiesIDList = (Integer[]) rs.getArray("cities_list").getArray();
                ArrayList<Cities> cities = new ArrayList<>();
                for (long i: citiesIDList)
                {
                    cities.add(new Cities(i));
                }
                tour.setCities(cities);

                result.add(tour);
            }
        } catch (SQLException | NamingException e) {
            e.printStackTrace();
        } finally {
            DBConnectionManager.closeConnection(conn, pst, rs);
        }

        return result;
    }

    public int count()
    {
        int result = 0;
        try {
            conn = DBConnectionManager.getConnection();
            pst = conn.prepareStatement(ToursQuery.count);
            rs = pst.executeQuery();
            rs.next();

            result = rs.getInt("count");

        } catch (SQLException | NamingException e) {
            e.printStackTrace();
        } finally {
            DBConnectionManager.closeConnection(conn, pst, rs);
        }
        return result;
    }
}
