package com.zeroToHero.FinalProject.servlets;

import com.zeroToHero.FinalProject.models.beans.Tours;
import com.zeroToHero.FinalProject.models.dao.MoreTousDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "DestinationServlet", value = "/destination")
public class DestinationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Tours> allTours = (new MoreTousDAO()).AllTours();
        request.setAttribute("allTours",allTours);
        request.getRequestDispatcher("/WEB-INF/views/destination.jsp").forward(request, response);
    }
}
