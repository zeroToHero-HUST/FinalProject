package com.zeroToHero.FinalProject.servlets.Admin;

import com.zeroToHero.FinalProject.models.beans.Tours;
import com.zeroToHero.FinalProject.models.dao.CitiesDAO;
import com.zeroToHero.FinalProject.models.dao.ToursDAO;
import com.zeroToHero.FinalProject.utilities.GetListPages;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

@WebServlet(name = "AdminTourServlet", value = "/admin/tour")
public class AdminTourServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currentPage;
        try{
            currentPage = Integer.parseInt(request.getParameter("page"));
        }
        catch (NumberFormatException e)
        {
            currentPage = 1;
        }

        int countTours = new ToursDAO().count();
        int nOfPages = countTours / 10;

        if (nOfPages % 10 > 0)
            nOfPages++;

        int[] listPages = GetListPages.run(currentPage, nOfPages);

        request.setAttribute("toursList", new ToursDAO().getToursByPage(currentPage));
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("nOfPages", nOfPages);
        request.setAttribute("firstPage", listPages[0]);
        request.setAttribute("lastPage", listPages[1]);
        request.setAttribute("citiesList", new CitiesDAO().getAllCities());

        request.getRequestDispatcher("/WEB-INF/views/admin/tour.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
