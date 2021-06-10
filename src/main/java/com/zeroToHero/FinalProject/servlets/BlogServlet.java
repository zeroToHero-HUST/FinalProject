package com.zeroToHero.FinalProject.servlets;

import com.zeroToHero.FinalProject.models.beans.Blogs;
import com.zeroToHero.FinalProject.models.dao.BlogDAO;
import com.zeroToHero.FinalProject.utilities.GetListPages;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "BlogServlet", value = "/blog")
public class BlogServlet extends HttpServlet {
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

        request.setAttribute("allBlogs",allBlogs);
        request.getSession().setAttribute("totalBlogs", countBlogs);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("nOfPages", nOfPages);
        request.setAttribute("firstPage", listPages[0]);
        request.setAttribute("lastPage", listPages[1]);
        request.getRequestDispatcher("/WEB-INF/views/blog.jsp").forward(request, response);
    }
}
