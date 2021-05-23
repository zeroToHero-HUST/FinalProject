package com.zeroToHero.FinalProject.servlets;

import com.zeroToHero.FinalProject.models.beans.Tours;
import com.zeroToHero.FinalProject.models.dao.ToursDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "HomeServlet", value = "")
public class HomeServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Tours> popTours = new ToursDAO().getPopularTours();

        req.setAttribute("popTours", popTours);
        req.getRequestDispatcher("/WEB-INF/views/home.jsp").forward(req, resp);
    }
}
