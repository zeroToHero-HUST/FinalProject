package com.zeroToHero.FinalProject.servlets;
import com.zeroToHero.FinalProject.models.beans.Blogs;
import com.zeroToHero.FinalProject.models.beans.Comments;
import com.zeroToHero.FinalProject.models.dao.BlogDAO;
import com.zeroToHero.FinalProject.models.dao.CommentsDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.postgresql.util.PSQLException;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
@WebServlet(name = "single-blog", value = "/singleBlog/*")
public class SingleBlogServlet  extends  HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int index =Integer.parseInt(request.getParameter("BlogId"));
        int total = Integer.parseInt(request.getParameter("TotalBlogs"));
        int prev = 1, next = 1 ;
        BlogDAO ba = new BlogDAO();

        if (index != 1 && index != total){
            prev = index-1;
            next = index + 1;
            Blogs prevBlog = ba.thisBlog(prev);
            Blogs thisBlog  = ba.thisBlog(index);
            Blogs nextBlog = ba.thisBlog(next);
            request.setAttribute("thisBlog",thisBlog);
            request.setAttribute("prevBlog",prevBlog);
            request.setAttribute("nextBlog",nextBlog);
        }
        else if (index == 1){
            prev = 0;
            next = index + 1;
            Blogs thisBlog  = ba.thisBlog(index);
            Blogs nextBlog = ba.thisBlog(next);
            request.setAttribute("thisBlog",thisBlog);
            request.setAttribute("nextBlog",nextBlog);
//            request.setAttribute("prevBlog",0);
        }
        else {
            prev = index - 1;
            next = 0;
            Blogs prevBlog = ba.thisBlog(prev);
            Blogs thisBlog  = ba.thisBlog(index);
            request.setAttribute("thisBlog",thisBlog);
            request.setAttribute("prevBlog",prevBlog);
//            request.setAttribute("nextBlog",0);
        }
        request.setAttribute("totalBlogs",total);
        ArrayList<Comments> allComments = (new CommentsDAO()).AllComments(index);
        request.setAttribute("allComments",allComments);
        request.setAttribute("totalComments",allComments.size());
        request.getRequestDispatcher("/WEB-INF/views/single-blog.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Comments newComment= new Comments();
            newComment.setUserId(request.getParameter("userId"));
            System.out.println(request.getParameter("userId"));
            newComment.setBlogId(Integer.parseInt(request.getParameter("BlogId")));
            newComment.setContent(request.getParameter("content"));
            int index = Integer.parseInt(request.getParameter("BlogId"));
            int totalCmt = 0;
            ArrayList<Comments> IComments;
            int total = Integer.parseInt(request.getParameter("TotalBlogs"));
            for (int i = 1; i <= total; i++){
                IComments = (new CommentsDAO()).AllComments(i);
                totalCmt+= IComments.size();
            }
            newComment.setCommentId(totalCmt+1);
        new CommentsDAO().comment(newComment);

        int prev = 1, next = 1;
            BlogDAO ba = new BlogDAO();

            if (index != 1 && index != total) {
                prev = index - 1;
                next = index + 1;
                Blogs prevBlog = ba.thisBlog(prev);
                Blogs thisBlog = ba.thisBlog(index);
                Blogs nextBlog = ba.thisBlog(next);
                request.setAttribute("thisBlog", thisBlog);
                request.setAttribute("prevBlog", prevBlog);
                request.setAttribute("nextBlog", nextBlog);
            } else if (index == 1) {
                prev = 0;
                next = index + 1;
                Blogs thisBlog = ba.thisBlog(index);
                Blogs nextBlog = ba.thisBlog(next);
                request.setAttribute("thisBlog", thisBlog);
                request.setAttribute("nextBlog", nextBlog);
//            request.setAttribute("prevBlog",0);
            } else {
                prev = index - 1;
                next = 0;
                Blogs prevBlog = ba.thisBlog(prev);
                Blogs thisBlog = ba.thisBlog(index);
                request.setAttribute("thisBlog", thisBlog);
                request.setAttribute("prevBlog", prevBlog);
//            request.setAttribute("nextBlog",0);
            }
            request.setAttribute("totalBlogs", total);
            ArrayList<Comments> allComments = (new CommentsDAO()).AllComments(index);
            request.setAttribute("allComments", allComments);
            request.setAttribute("totalComments", allComments.size());
            request.getRequestDispatcher("/WEB-INF/views/single-blog.jsp").forward(request, response);


//            response.sendRedirect(request.getContextPath() + "/login");


    }
}
