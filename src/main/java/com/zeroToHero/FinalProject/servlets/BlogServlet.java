package com.zeroToHero.FinalProject.servlets;

import com.zeroToHero.FinalProject.models.beans.Blogs;
import com.zeroToHero.FinalProject.models.dao.BlogDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "BlogServlet", value = "/blog")
public class BlogServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Blogs> allBlogs = (new BlogDAO()).allBlogs();
        int numOfPage = allBlogs.size()/5 + 1;
        req.setAttribute("numPage",numOfPage);
        req.setAttribute("allBlogs",allBlogs);
        req.setAttribute("totalBlog",allBlogs.size());
        req.getRequestDispatcher("/WEB-INF/views/blog.jsp").forward(req, resp);
    }
}
