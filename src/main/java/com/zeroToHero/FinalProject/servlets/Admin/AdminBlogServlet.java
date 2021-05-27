package com.zeroToHero.FinalProject.servlets.Admin;

import com.zeroToHero.FinalProject.models.beans.Blogs;
import com.zeroToHero.FinalProject.models.dao.BlogDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "AdminBlogServlet", value = "/admin/blog")
public class AdminBlogServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Blogs> allBlogs = new BlogDAO().getAllBlogs();
        request.setAttribute("allBlogs", allBlogs);
        request.getRequestDispatcher("/WEB-INF/views/admin/blog.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
