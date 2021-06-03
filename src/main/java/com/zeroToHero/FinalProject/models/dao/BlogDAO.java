package com.zeroToHero.FinalProject.models.dao;

import com.zeroToHero.FinalProject.database.DBConnectionManager;
import com.zeroToHero.FinalProject.models.beans.Blogs;
import com.zeroToHero.FinalProject.models.beans.Tours;

import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.TextStyle;
import java.util.ArrayList;
import java.util.Locale;

public class BlogDAO {
    private Connection conn = null;
    public ArrayList<Blogs> allBlogs(){
        ArrayList<Blogs> allBlogs = new ArrayList<>();
        Statement st = null;
        ResultSet rs = null;
        String getMoreTours =
                "SELECT blog_id, created_at, title, images " +
                        "FROM blogs " +
                        ";";
        try {
            conn = DBConnectionManager.getConnection();
            st = conn.createStatement();
            rs = st.executeQuery(getMoreTours);
            int max = 3;
            while (rs.next())
            {

                Blogs blog = new Blogs();
                blog.setBlogId(rs.getInt("blog_id"));
                blog.setTitle(rs.getString("title"));
                java.sql.Timestamp created_at = rs.getTimestamp("created_at");
                LocalDateTime fmt = created_at.toLocalDateTime();
                blog.setDate(String.valueOf(fmt.getDayOfMonth()));
                blog.setMonth(fmt.getMonth().getDisplayName(TextStyle.FULL, Locale.ENGLISH));

                String[] images = (String[]) rs.getArray("images").getArray();
                blog.setImages(images[0]);

                allBlogs.add(blog);
            }
        }
        catch (SQLException | NamingException throwable) {
            throwable.printStackTrace();
        }
        finally {
            DBConnectionManager.closeConnection(conn, st, rs);
        }
        return allBlogs;
    }
    public Blogs thisBlog(int index){
        Blogs Blog = new Blogs();
        Statement st = null;
        ResultSet rs = null;
        String getMoreTours =
                "SELECT blog_id, created_at, title, content, images " +
                        "FROM blogs " +
                        "where blog_id = "+String.valueOf(index)+
                        ";";
        try {
            conn = DBConnectionManager.getConnection();
            st = conn.createStatement();
            rs = st.executeQuery(getMoreTours);
            while (rs.next())
            {

                Blog.setBlogId(rs.getInt("blog_id"));
                Blog.setTitle(rs.getString("title"));
                java.sql.Timestamp created_at = rs.getTimestamp("created_at");
                LocalDateTime fmt = created_at.toLocalDateTime();
                Blog.setDate(String.valueOf(fmt.getDayOfMonth()));
                Blog.setMonth(fmt.getMonth().getDisplayName(TextStyle.FULL, Locale.ENGLISH));
                Blog.setContent(rs.getString("content"));

                String[] images = (String[]) rs.getArray("images").getArray();
                Blog.setImages(images[0]);

            }
        }
        catch (SQLException | NamingException throwable) {
            throwable.printStackTrace();
        }
        finally {
            DBConnectionManager.closeConnection(conn, st, rs);
        }
        return Blog;
    }

    public ArrayList<Blogs> getAllBlogs()
    {
        ArrayList<Blogs> allBlogs = new ArrayList<>();
        Statement st = null;
        ResultSet rs = null;
        String getMoreTours =
            "SELECT * FROM blogs;";

        try {
            conn = DBConnectionManager.getConnection();
            st = conn.createStatement();
            rs = st.executeQuery(getMoreTours);
            while (rs.next())
            {
                Blogs blog = new Blogs();
                blog.setBlogId(rs.getInt("blog_id"));
                blog.setTitle(rs.getString("title"));
                blog.setContent(rs.getString("content"));
                blog.setUserId(rs.getString("user_id"));
                blog.setCreatedAt(rs.getTimestamp("created_at"));
                blog.setUpdatedAt(rs.getTimestamp("updated_at"));
                blog.setImages(rs.getString("images"));
                allBlogs.add(blog);
            }
        }
        catch (SQLException | NamingException throwable) {
            throwable.printStackTrace();
        }
        finally {
            DBConnectionManager.closeConnection(conn, st, rs);
        }
        return allBlogs;
    }
}
