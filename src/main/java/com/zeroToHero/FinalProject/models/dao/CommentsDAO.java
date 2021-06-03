package com.zeroToHero.FinalProject.models.dao;
import com.zeroToHero.FinalProject.database.DBConnectionManager;
import com.zeroToHero.FinalProject.database.queries.mainQueries.BlogsQuery;
import com.zeroToHero.FinalProject.database.queries.mainQueries.BookingsQuery;
import com.zeroToHero.FinalProject.models.beans.Bookings;
import com.zeroToHero.FinalProject.models.beans.Comments;
import com.zeroToHero.FinalProject.models.beans.Tours;

import javax.naming.NamingException;
import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;

public class CommentsDAO {
    private Connection conn = null;
    private ResultSet rs=  null;
    public ArrayList<Comments> AllComments(int index){
        ArrayList<Comments> allComments = new ArrayList<>();
        Statement st = null;

        String getAllComments ="SELECT distinct comment_id, comments.user_id,content, comments.created_at,users.first_name, users.last_name \n" +
                "                        from comments,users\n" +
                "                        where blog_id = "+  String.valueOf(index)+
                "                        and comments.user_id = users.user_id"
                ;
        try {
            conn = DBConnectionManager.getConnection();
            st = conn.createStatement();
            rs = st.executeQuery(getAllComments);

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
            DBConnectionManager.closeConnection(conn, st, rs);
        }
        return allComments;
    }
    private PreparedStatement pst = null;
    public void comment(Comments newComment)
    {
        try {
            conn = DBConnectionManager.getConnection();
            pst = conn.prepareStatement((BlogsQuery.insertBlogs));

            pst.setString(1, newComment.getUserId());
            pst.setLong(2, newComment.getCommentId());
            pst.setString(3, newComment.getContent());
            pst.setLong(4, newComment.getBlogId());

            System.out.println(newComment.getUserId());
            System.out.println(newComment.getCommentId());
            System.out.println(newComment.getContent());
            System.out.println(newComment.getBlogId());

            pst.executeUpdate();

        } catch (SQLException | NamingException e) {
            e.printStackTrace();
        } finally {
            DBConnectionManager.closeConnection(conn, pst, rs);
        }
    }
}
