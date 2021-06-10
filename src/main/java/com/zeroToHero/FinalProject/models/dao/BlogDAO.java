package com.zeroToHero.FinalProject.models.dao;

import com.zeroToHero.FinalProject.database.DBConnectionManager;
import com.zeroToHero.FinalProject.database.queries.mainQueries.BlogsQuery;
import com.zeroToHero.FinalProject.models.beans.Blogs;
import com.zeroToHero.FinalProject.models.beans.Tours;

import javax.naming.NamingException;
import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.TextStyle;
import java.util.ArrayList;
import java.util.Locale;

public class BlogDAO {
    private Connection conn = null;
    private PreparedStatement pst = null;
    private Statement st = null;
    private ResultSet rs = null;

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

    public ArrayList<Blogs> getBlogsByPage(int pageNumber)
    {
        ArrayList<Blogs> result = new ArrayList<>();

        try
        {
            conn = DBConnectionManager.getConnection();
            pst = conn.prepareStatement(BlogsQuery.getBlogsByPage);
            pst.setInt(1, pageNumber);
            rs = pst.executeQuery();

            while (rs.next())
            {
                String[] images = (String[]) rs.getArray("images").getArray();
                java.sql.Timestamp updated_at = rs.getTimestamp("updated_at");
                LocalDateTime fmt = updated_at.toLocalDateTime();

                result.add(new Blogs(
                    rs.getLong("blog_id"),
                    rs.getString("user_id"),
                    rs.getTimestamp("created_at"),
                    rs.getTimestamp("updated_at"),
                    rs.getString("content"),
                    images[0],
                    rs.getString("title"),
                    String.valueOf(fmt.getDayOfMonth()),
                    fmt.getMonth().getDisplayName(TextStyle.FULL, Locale.ENGLISH)));
            }
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
            pst = conn.prepareStatement(BlogsQuery.count);
            rs = pst.executeQuery();
            rs.next();

            result = rs.getInt("count");
        } catch (SQLException | NamingException throwable) {
            throwable.printStackTrace();
        } finally {
            DBConnectionManager.closeConnection(conn, pst, rs);
        }
        return result;
    }

    public void insertBlog(Blogs blog)
    {
        try {
            conn = DBConnectionManager.getConnection();
            pst = conn.prepareStatement(BlogsQuery.insertBlog);

            pst.setString(1, blog.getUserId());
            pst.setString(2, blog.getTitle());
            pst.setString(3, blog.getContent());
            String[] images = { blog.getImages() };
            pst.setArray(4, conn.createArrayOf("VARCHAR", images));

            pst.executeUpdate();
        } catch (SQLException | NamingException throwable) {
            throwable.printStackTrace();
        } finally {
            DBConnectionManager.closeConnection(conn, pst, rs);
        }
    }
}
