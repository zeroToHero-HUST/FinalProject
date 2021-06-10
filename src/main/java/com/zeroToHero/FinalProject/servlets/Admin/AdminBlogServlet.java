package com.zeroToHero.FinalProject.servlets.Admin;

import com.zeroToHero.FinalProject.models.beans.Blogs;
import com.zeroToHero.FinalProject.models.beans.Users;
import com.zeroToHero.FinalProject.models.dao.BlogDAO;
import com.zeroToHero.FinalProject.utilities.GetListPages;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "AdminBlogServlet", value = "/admin/blog")
public class AdminBlogServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currentPage;
        try {
            currentPage = Integer.parseInt(request.getParameter("page"));
        }
        catch (NumberFormatException e)
        {
            currentPage = 1;
        }

        int countBlogs = new BlogDAO().count();
        int nOfPages = countBlogs / 3;

        if (nOfPages % 10 > 0)
            nOfPages++;

        ArrayList<Blogs> allBlogs = new BlogDAO().getBlogsByPage(currentPage);
        int[] listPages = GetListPages.run(currentPage, nOfPages);

        request.setAttribute("allBlogs", allBlogs);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("nOfPages", nOfPages);
        request.setAttribute("firstPage", listPages[0]);
        request.setAttribute("lastPage", listPages[1]);
        request.getRequestDispatcher("/WEB-INF/views/admin/blog.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Blogs blog = new Blogs();
        blog.setUserId(((Users) request.getAttribute("user")).getUserId());
        blog.setTitle(request.getParameter("title"));
        blog.setContent(request.getParameter("content"));
        blog.setImages(request.getParameter("image"));

        new BlogDAO().insertBlog(blog);
        response.sendRedirect("blog");
    }
}
