package com.zeroToHero.FinalProject.models.dao;
import com.zeroToHero.FinalProject.database.DBConnectionManager;
import com.zeroToHero.FinalProject.database.queries.mainQueries.BlogsQuery;
import com.zeroToHero.FinalProject.database.queries.mainQueries.BookingsQuery;
import com.zeroToHero.FinalProject.database.queries.mainQueries.CommentsQuery;
import com.zeroToHero.FinalProject.models.beans.Bookings;
import com.zeroToHero.FinalProject.models.beans.Comments;
import com.zeroToHero.FinalProject.models.beans.Tours;

import javax.naming.NamingException;
import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;

public class CommentsDAO {
    private Connection conn = null;
    private PreparedStatement pst = null;
    private Statement st = null;
    private ResultSet rs = null;

    public ArrayList<Comments> getAllCommentsByBlogId(int blogId){
        ArrayList<Comments> allComments = new ArrayList<>();

        try {
            conn = DBConnectionManager.getConnection();
            pst = conn.prepareStatement(CommentsQuery.getAllComments);
            pst.setInt(1, blogId);
            rs = pst.executeQuery();

            while (rs.next())
            {
                Comments comments = new Comments();
                comments.setCommentId(rs.getInt("comment_id"));
                comments.setContent(rs.getString("content"));
                comments.setUserName(rs.getString("first_name")+rs.getString("last_name"));
                LocalDateTime dt = rs.getTimestamp("created_at").toLocalDateTime();
                String dateTime = dt.toString();
                comments.setDateTime(dateTime);
                comments.setCreatedAt(rs.getTimestamp("created_at"));

                allComments.add(comments);
            }
        }
        catch (SQLException | NamingException throwable) {
            throwable.printStackTrace();
        }
        finally {
            DBConnectionManager.closeConnection(conn, pst, rs);
        }
        return allComments;
    }

    public void insertComment(Comments newComment)
    {
        try {
            conn = DBConnectionManager.getConnection();
            pst = conn.prepareStatement((CommentsQuery.insertComments));

            pst.setString(1, newComment.getUserId());
            pst.setLong(2, newComment.getCommentId());
            pst.setString(3, newComment.getContent());
            pst.setLong(4, newComment.getBlogId());

            pst.executeUpdate();

        } catch (SQLException | NamingException e) {
            e.printStackTrace();
        } finally {
            DBConnectionManager.closeConnection(conn, pst, rs);
        }
    }
}
