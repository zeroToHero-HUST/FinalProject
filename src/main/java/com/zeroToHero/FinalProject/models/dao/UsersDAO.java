package com.zeroToHero.FinalProject.models.dao;

import com.zeroToHero.FinalProject.database.DBConnectionManager;
import com.zeroToHero.FinalProject.database.queries.mainQueries.UsersQuery;
import com.zeroToHero.FinalProject.models.beans.Users;
import com.zeroToHero.FinalProject.utilities.Auth;

import javax.naming.NamingException;
import java.sql.*;

public class UsersDAO {
    private Connection conn = null;
    private PreparedStatement pst = null;
    private Statement st = null;
    private ResultSet rs = null;

    public boolean checkAvailableEmail(String email) throws SQLException {
        boolean result = false;
        try {
            conn = DBConnectionManager.getConnection();
            pst = conn.prepareStatement(UsersQuery.checkAvailableEmail);
            pst.setString(1, email);
            rs = pst.executeQuery();
            if (rs.next())
            {
                result = rs.getBoolean("exists");
            }
        } catch (SQLException | NamingException throwable) {
            throwable.printStackTrace();
        } finally {
            DBConnectionManager.closeConnection(conn, pst, rs);
        }

        return result;
    }

    public void signUp(Users newUser)
    {
        try {
            conn = DBConnectionManager.getConnection();
            pst = conn.prepareStatement(UsersQuery.insertNewUser);

            pst.setString(1, newUser.getEmail());
            pst.setString(2, newUser.getPassword());
            pst.setString(3, newUser.getFirstName());
            pst.setString(4, newUser.getLastName());
            pst.setLong(5, newUser.getCountryId());

            pst.executeUpdate();
        } catch (SQLException | NamingException throwable) {
            throwable.printStackTrace();
        } finally {
            DBConnectionManager.closeConnection(conn, pst, rs);
        }
    }

    public Users logIn(String email, String password)
    {
        Users result = null;
        try {
            if (checkAvailableEmail(email))
            {
                conn = DBConnectionManager.getConnection();
                pst = conn.prepareStatement(UsersQuery.getUserByEmail);
                pst.setString(1, email);
                rs = pst.executeQuery();
                rs.next();

                if (Auth.checkPassword(password, rs.getString("password")))
                {
                    result = new Users();
                    result.setUserId(rs.getString("user_id"));
                    result.setEmail(rs.getString("email"));
                    result.setFirstName(rs.getString("first_name"));
                    result.setLastName(rs.getString("last_name"));
                    result.setCreatedAt(rs.getTimestamp("created_at"));
                    result.setProfileImage(rs.getString("profile_image"));
                    result.setRole(rs.getString("role"));
                    result.setCountryId(rs.getLong("country_id"));
                }
            }
        } catch (SQLException | NamingException throwable) {
            throwable.printStackTrace();
        } finally {
            DBConnectionManager.closeConnection(conn, pst, rs);
        }

        return result;
    }
}
