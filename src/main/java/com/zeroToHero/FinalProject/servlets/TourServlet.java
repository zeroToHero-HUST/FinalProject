package com.zeroToHero.FinalProject.servlets;

import com.zeroToHero.FinalProject.models.beans.Tours;
import com.zeroToHero.FinalProject.models.dao.MoreTousDAO;
import com.zeroToHero.FinalProject.models.dao.ToursDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "TourServlet", value = "/tour/*")
public class TourServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String i = request.getParameter("TourId");
        MoreTousDAO ParTour = new MoreTousDAO();
        ArrayList<Tours> moreTours = ParTour.MoreTours(Integer.parseInt(i));
        Tours thisTour = ParTour.ThisTour(Integer.parseInt(i));
        request.setAttribute("moreTours",moreTours);
        request.setAttribute("thisTour",thisTour);
        request.getRequestDispatcher("/WEB-INF/views/tour.jsp").forward(request, response);
    }
}
