package com.zeroToHero.FinalProject.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "TourServlet", value = "/tour/*")
public class TourServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String i = request.getParameter("TourId");
        request.setAttribute("i",i);
        request.getRequestDispatcher("/WEB-INF/views/tour.jsp").forward(request, response);
    }
}
