package com.zeroToHero.FinalProject.models.dao;

import com.zeroToHero.FinalProject.database.DBConnectionManager;
import com.zeroToHero.FinalProject.database.queries.mainQueries.UsersQuery;
import com.zeroToHero.FinalProject.models.beans.Users;
import com.zeroToHero.FinalProject.utilities.Auth;

import javax.naming.NamingException;
import java.sql.*;
import java.util.ArrayList;

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
                    result = new Users(
                            rs.getString("user_id"),
                            rs.getString("email"),
                            rs.getString("first_name"),
                            rs.getString("last_name"),
                            rs.getString("profile_image"),
                            rs.getTimestamp("created_at"),
                            rs.getString("role"),
                            rs.getLong("country_id"));
                }
            }
        } catch (SQLException | NamingException throwable) {
            throwable.printStackTrace();
        } finally {
            DBConnectionManager.closeConnection(conn, pst, rs);
        }

        return result;
    }

    public ArrayList<Users> getUsersByPage(int pageNumber)
    {
        ArrayList<Users> result = new ArrayList<>();

        try {
            conn = DBConnectionManager.getConnection();
            pst = conn.prepareStatement(UsersQuery.getUsersByPage);
            pst.setInt(1, pageNumber);
            rs = pst.executeQuery();

            while (rs.next())
            {
                result.add(new Users(
                        rs.getString("user_id"),
                        rs.getString("email"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("profile_image"),
                        rs.getTimestamp("created_at"),
                        rs.getString("role"),
                        rs.getLong("country_id")));
            }
        } catch (SQLException | NamingException throwable) {
            throwable.printStackTrace();
        } finally {
            DBConnectionManager.closeConnection(conn, pst, rs);
        }

        return result;
    }

    public int updateUser(Users user)
    {
        int result = -1;
        try {
            conn = DBConnectionManager.getConnection();
            pst = conn.prepareStatement(UsersQuery.updateUser);
            pst.setString(1, user.getFirstName());
            pst.setString(2, user.getLastName());
            pst.setString(3, user.getEmail());
            pst.setString(4, user.getRole());
            pst.setString(5, user.getProfileImage());
            pst.setString(6, user.getUserId());
            result = pst.executeUpdate();

        } catch (SQLException | NamingException throwable) {
            throwable.printStackTrace();
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
            pst = conn.prepareStatement(UsersQuery.count);
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

    public void deleteUser(String userId, String email)
    {
        try {
            conn = DBConnectionManager.getConnection();
            pst = conn.prepareStatement(UsersQuery.deleteUser);
            pst.setString(1, userId);
            pst.setString(2, email);

            pst.executeUpdate();
        } catch (SQLException | NamingException e) {
            e.printStackTrace();
        } finally {
            DBConnectionManager.closeConnection(conn, pst, rs);
        }
    }
}
