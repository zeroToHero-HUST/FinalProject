package com.zeroToHero.FinalProject.servlets;
import com.zeroToHero.FinalProject.models.beans.Blogs;
import com.zeroToHero.FinalProject.models.dao.BlogDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
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
            request.setAttribute("prevBlog",0);
        }
        else {
            prev = index + 1;
            next = 0;
            Blogs prevBlog = ba.thisBlog(prev);
            Blogs thisBlog  = ba.thisBlog(index);
            request.setAttribute("thisBlog",thisBlog);
            request.setAttribute("prevBlog",prevBlog);
            request.setAttribute("nextBlog",0);
        }
        request.setAttribute("totalBlogs",total);

        request.getRequestDispatcher("/WEB-INF/views/single-blog.jsp").forward(request, response);
    }
}
