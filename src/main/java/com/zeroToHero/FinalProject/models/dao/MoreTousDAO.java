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

public class MoreTousDAO {
    private  Tours thisTour;
    private Connection conn = null;
    public ArrayList<Tours> MoreTours(int index){
        ArrayList<Tours> moreTours = new ArrayList<>();
        Statement st = null;
        ResultSet rs = null;
        String getMoreTours =
                "SELECT tours.tour_id, title, duration, price, countries.name AS country_name " +
                        "FROM tours, destinations, cities, countries " +
                        "WHERE tours.tour_id = destinations.tour_id " +
                        "AND destinations.city_id = cities.city_id " +
                        "AND cities.country_id = countries.country_id " +
                        "GROUP BY tours.tour_id, countries.name " +
                        "LIMIT 4 ;";
        try {
            conn = DBConnectionManager.getConnection();
            st = conn.createStatement();
            rs = st.executeQuery(getMoreTours);
            int i = 0;
            int max = 3;
            while (rs.next())
            {

                i += 1;
                Tours tour = new Tours();
                tour.setTourId(rs.getLong("tour_id"));
                tour.setTitle(rs.getString("title"));
                tour.setDuration(rs.getLong("duration"));
                tour.setPrice(rs.getString("price"));
                tour.setCountryName(rs.getString("country_name"));
                if (i != index){
                    moreTours.add(tour);
                }
                else {
                    max++;
                    continue;
                }
                if (i >= max){
                    break;
                }
            }
        }
        catch (SQLException | NamingException throwable) {
            throwable.printStackTrace();
        }
        finally {
            DBConnectionManager.closeConnection(conn, st, rs);
        }
        return moreTours;
    }
    public Tours getThisTour(){
        return this.thisTour;
    }
    public Tours ThisTour(int index){
        Statement st = null;
        ResultSet rs = null;
        String t = String.valueOf(index);
        String getThisTours =
                "SELECT tours.tour_id, title, duration, price,tours.description, countries.name AS country_name " +
                        "FROM tours, destinations, cities, countries " +
                        "WHERE tours.tour_id = destinations.tour_id " +
                        "AND destinations.city_id = cities.city_id " +
                        "AND cities.country_id = countries.country_id " +
                        "AND tours.tour_id="+ t +
                        "group by tours.tour_id,countries.name"+
                        ";";
        Tours tour = new Tours();
        try {
            conn = DBConnectionManager.getConnection();
            st = conn.createStatement();

            rs = st.executeQuery(getThisTours);
            while (rs.next()) {
                tour.setTourId(rs.getLong("tour_id"));
                tour.setTitle(rs.getString("title"));
                tour.setDuration(rs.getLong("duration"));
                tour.setPrice(rs.getString("price"));
                tour.setCountryName(rs.getString("country_name"));
                tour.setDescription(rs.getString("description"));
            }

        }
        catch (SQLException | NamingException throwable) {
            throwable.printStackTrace();
        }
        finally {
            DBConnectionManager.closeConnection(conn, st, rs);
        }
        return tour;
    }

}
